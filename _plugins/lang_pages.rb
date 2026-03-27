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
      original_pages = site.pages.dup
      
      site.config['languages'].each do |lang|
        original_pages.each do |page|
          next unless page.data['i18n_key']
          next if page.data['lang'] == lang
          
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
      self.data = self.data.dup
      self.data['lang'] = lang
      
      if lang == site.config['lang']
        self.data['permalink'] = self.data['permalink'] || self.url
      else
        original_url = self.data['permalink'] || self.url
        baseurl = site.config['baseurl'] || ''
        self.data['permalink'] = "#{baseurl}/#{lang}#{original_url}"
      end
    end
    
    def url
      @url ||= self.data['permalink']
    end
  end
end
