require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'https://mita.agency'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily', :priority => 0.9
  add '/contacts', :changefreq => 'weekly'
  add '/about', :changefreq => 'weekly'
  add '/ecommerce', :changefreq => 'weekly'
  add '/webdesign', :changefreq => 'weekly'
  add '/content-creation', :changefreq => 'weekly'
  add '/graphic-design', :changefreq => 'weekly'
  add '/ppc-marketing', :changefreq => 'weekly'
  add '/seo', :changefreq => 'weekly'
  add '/social-media', :changefreq => 'weekly'
  add '/consulting', :changefreq => 'weekly'
  add '/stories', :changefreq => 'weekly'
  add '/clients', :changefreq => 'weekly'









end

