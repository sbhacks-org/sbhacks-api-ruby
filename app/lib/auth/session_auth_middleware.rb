module Auth
  class SessionAuthMiddleware < Rack::Auth::AbstractHandler
    def call(env)
      session = env['rack.session']

      return @app.call(env) if session[:user_id]

      unauthorized
    end

    private

    def challenge
      'Session-Cookie'
    end
  end
end
