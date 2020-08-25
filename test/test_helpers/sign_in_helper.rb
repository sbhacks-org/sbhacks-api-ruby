module SignInHelper
  def sign_in_as(user)
    user = create(user) if user.is_a? Symbol

    post session_path, params: { username: user.email, password: user.password }

    user
  end
end
