module Jekyll
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
      self.data['lang'] = lang
      self.data['permalink'] = "/#{lang}#{self.data['permalink'] || self.url}"
    end
  end
end
