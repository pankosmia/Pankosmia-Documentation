Jekyll.logger.warn "=== Plugin file loaded ==="

module Jekyll
  class LangPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      Jekyll.logger.warn "=== Generator.generate called ==="
      Jekyll.logger.warn "Languages: #{site.config['languages'].inspect}"
      
      # rest of generate method
    end
  end
end

module Jekyll
  Jekyll.logger.info "Lang plugin loaded"

  class LangPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.config['languages'].each do |lang|
        site.pages.each do |page|
          next unless page.data['i18n_key']
          
          if lang != site.config['lang']
            new_page = PageWithLang.new(site, site.source, page.dir, page.name, lang)
            site.pages << new_page
          end
        end
      end
    end
  end

  class PageWithLang < Page
    def initialize(site, base, dir, name, lang)
      super(site, base, dir, name)
      @data = @data.dup
      @data['lang'] = lang
      if lang == site.config['lang']
        @data['permalink'] = @data['permalink'] || url
      else
        @data['permalink'] = "/#{lang}#{@data['permalink'] || url}"
      end
    end
  end
end
