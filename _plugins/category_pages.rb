module Jekyll
  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      site.categories.each do |category, posts|
        site.pages << CategoryPage.new(site, category, posts)
      end
    end
  end

  class CategoryPage < Page
    def initialize(site, category, posts)
      @site = site
      @base = site.source
      @dir = File.join('things', 'categories', category.downcase)
      @name = "index.md"

      self.process(@name)
      self.read_yaml(File.join(@base, '_layouts'), 'category.md')
      
      self.data['title'] = "#{category}"
      self.data['category'] = category
    end
  end
end 