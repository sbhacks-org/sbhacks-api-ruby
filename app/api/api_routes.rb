class APIRoutes < Grape::API
  use ActionDispatch::Session::CookieStore, key: '_sbhacks_session'
  format :json

  helpers APIHelpers

  mount API::Auth
end
