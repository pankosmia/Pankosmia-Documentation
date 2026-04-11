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
            new_page = PageWithLang.new(site, site.source, lang, page)
            site.pages << new_page
          end
        end
      end
    end
  end

  class PageWithLang < Page
    def initialize(site, base, lang, original_page)
      @site = site
      @base = base
      @dir = original_page.dir
      @name = original_page.name
      
      self.process(@name)
      
      @content = original_page.content  # Copy the markdown content
      
      @data = {
        'layout' => original_page.data['layout'],
        'title' => original_page.data['title'],
        'i18n_key' => original_page.data['i18n_key'],
        'nav_order' => original_page.data['nav_order'],
        'parent' => original_page.data['parent'],
        'grand_parent' => original_page.data['grand_parent'],
        'has_children' => original_page.data['has_children'],
        'nav_exclude' => original_page.data['nav_exclude'],
        'lang' => lang
      }
      
      original_url = original_page.data['permalink'] || original_page.url
      @data['permalink'] = "/#{lang}#{original_url}"
    end
    
    def url
      @url ||= @data['permalink']
    end
  end
end
