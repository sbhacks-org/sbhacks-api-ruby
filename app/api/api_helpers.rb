module APIHelpers
  extend Grape::API::Helpers

  def session
    env['rack.session']
  end
end
