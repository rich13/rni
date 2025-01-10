module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      site.tags.each do |tag, posts|
        site.pages << TagPage.new(site, tag, posts)
      end
    end
  end

  class TagPage < Page
    def initialize(site, tag, posts)
      @site = site
      @base = site.source
      @dir = File.join('things', 'tags', tag.downcase)
      @name = "index.md"

      self.process(@name)
      self.read_yaml(File.join(@base, '_layouts'), 'tag.md')
      
      self.data['title'] = "##{tag}"
      self.data['tag'] = tag
    end
  end
end 