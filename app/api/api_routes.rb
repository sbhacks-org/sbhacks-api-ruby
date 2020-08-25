class APIRoutes < Grape::API
  use ActionDispatch::Session::CookieStore, key: '_sbhacks_session'
  helpers APIHelpers
  format :json
  auth :from_session

  mount API::Auth
end
