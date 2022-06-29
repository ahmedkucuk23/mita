# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.mita.agency"

SitemapGenerator::Sitemap.create do
  
  sitemap_opts = {
    create_index: false,
    default_host: 'https://mita.agency',
    compress: false,
    sitemaps_path: '',
    namer: SitemapGenerator::SimpleNamer.new(:sitemap)
  }
  
  SitemapGenerator::Sitemap.create sitemap_opts do
    add '/contact', changefreq: 'weekly'
    add '/services', changefreq: 'weekly'
    add '/stories', changefreq: 'weekly'
    add '/clients', changefreq: 'weekly'


  
  
    add_to_index "blog_sitemap.xml", host: ENV['SITE_URL']
  
end
