module API
  class Auth < Grape::API
    namespace :session do
      desc 'Acquires a session cookie from a username and password'
      params do
        requires :username, type: String
        requires :password, type: String
      end
      post auth: false do
        session.destroy

        user = User.find_by(email: params[:username])

        error! :not_found, 404 unless user.try(:authenticate, params[:password])

        session[:user_id] = user.id
        cookies[:_csrf_token] = session[:csrf_token] = SecureRandom.base64(32)

        status :ok
        {}
      end
    end
  end
end
