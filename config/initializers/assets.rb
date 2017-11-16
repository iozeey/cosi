# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
# RGeo::ActiveRecord::SpatialFactoryStore.instance.tap do |config|
#   # By default, use the GEOS implementation for spatial columns.
#   config.default = RGeo::Geos.factory_generator

#   # But use a geographic implementation for point columns.
#   config.register(RGeo::Geographic.spherical_factory(srid: 4326), geo_type: "point")
# end
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
