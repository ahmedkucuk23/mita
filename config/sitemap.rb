require 'sitemap_generator'
SitemapGenerator::Sitemap.create_index = :auto
SitemapGenerator::Sitemap.default_host = 'https://mita.agency'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily', :priority => 0.9
  add '/contacts', :changefreq => 'daily'
  add '/about', :changefreq => 'monthly'
  add '/ecommerce', :changefreq => 'daily'
  add '/webdesign', :changefreq => 'daily'
  add '/content-creation', :changefreq => 'daily'
  add '/graphic-design', :changefreq => 'daily'
  add '/ppc-marketing', :changefreq => 'daily'
  add '/seo', :changefreq => 'daily'
  add '/social-media', :changefreq => 'daily'
  add '/consulting', :changefreq => 'daily'
  add '/stories', :changefreq => 'daily'
  add '/clients', :changefreq => 'daily'
  
end

