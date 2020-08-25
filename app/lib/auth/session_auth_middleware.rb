module Auth
  class SessionAuthMiddleware < Grape::Middleware::Auth::Base
    def call(env)
      self.env = env

      if context.route.options[:auth] != false
        throw(:error, status: 401, message: 'Unauthorized') unless context.session[:user_id]
        throw(:error, status: 403, message: 'Forbidden') unless verified_request?
      end

      @app.call(env)
    end

    private

    def verified_request?
      return true if Rails.env.development? && env['HTTP_X_IGNORE_CSRF']

      method = context.route.options[:method]
      method == 'GET' || method == 'HEAD' || context.session[:csrf_token] == env['HTTP_X_CSRF_TOKEN']
    end
  end
end
