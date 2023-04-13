# frozen_string_literal: true

# config/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001'  # Replace with your React front-end domain or '*' for any domain
    resource '*', headers: :any, methods: %i[get post put delete options]
  end
end