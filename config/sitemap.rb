Sitemap::Generator.instance.load :host => "http://bautistamontedesion.com" do
  literal '/', :changefreq => 'daily', :priority => 0.9
  literal '/contact_us'
  literal '/about_us'
  literal '/posts'
end
