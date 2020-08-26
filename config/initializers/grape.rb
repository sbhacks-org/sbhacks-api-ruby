# Be sure to restart your server when you modify this file.

Rails.configuration.to_prepare do
  Grape::Middleware::Auth::Strategies.add(:from_session, Auth::SessionAuthMiddleware)
end
