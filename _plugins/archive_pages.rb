module Jekyll
  class ArchivePageGenerator < Generator
    safe true

    def generate(site)
      years = site.posts.docs.map { |post| post.date.year }.uniq
      years.each do |year|
        site.pages << ArchivePage.new(site, year)
      end
    end
  end

  class ArchivePage < Page
    def initialize(site, year)
      @site = site
      @base = site.source
      @dir = File.join('things', year.to_s)
      @name = "index.md"

      self.process(@name)
      self.read_yaml(File.join(@base, '_layouts'), 'archive.md')
      
      self.data['title'] = year.to_s
      self.data['year'] = year
    end
  end
end 