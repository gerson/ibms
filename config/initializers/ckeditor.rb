Ckeditor.setup do |config|
  # //cdn.ckeditor.com/<version.number>/<distribution>/ckeditor.js
  config.cdn_url = "//cdn.ckeditor.com/4.5.9/standard/ckeditor.js"
  config.assets_languages = ['en', 'fr', 'es']
  config.assets_plugins = ['image', 'smiley']
end
