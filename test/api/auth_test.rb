require 'test_helper'

class AuthTest < ActionDispatch::IntegrationTest
  test 'signing in sets the session id' do
    user = sign_in_as(:user)

    assert_equal user.id, @request.session[:user_id]
  end

  test 'signing in with invalid credentials clears the session' do
    sign_in_as(:user)

    post session_path, params: { username: 'nonexistent user', password: '' }

    assert_nil @request.session[:user_id]
  end
end
