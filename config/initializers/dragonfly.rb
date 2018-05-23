require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret ENV["DRAGONFLY_SECRET"]
  # secret "87777752e7c4e81a98c8509d962d043dd0df0668fdfb0d16b9bcf7561b619b10"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end
