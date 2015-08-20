# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# Add the fonts path
Rails.application.config.assets.paths << Rails.root.join('gulp', 'assets', 'stylesheets')
Rails.application.config.assets.paths << Rails.root.join('gulp', 'assets', 'javascripts')
Rails.application.config.assets.paths << Rails.root.join('gulp', 'assets', 'images')
Rails.application.config.assets.paths << Rails.root.join('gulp', 'assets', 'fonts')
# Precompile additional assets
gulp_precompile_path = lambda do |filename, path|
  path =~ /gulp\/assets/ && !%w(.js .css).include?(File.extname(filename))
end
Rails.application.config.assets.precompile << gulp_precompile_path
Rails.application.config.assets.precompile += %w( custom.css )
