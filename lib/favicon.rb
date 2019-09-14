require "favicon/version"

module Favicon
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.paths << root.join("app", "assets", "images")
    end
  end
end
