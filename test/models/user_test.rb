require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'factory is valid' do
    assert_predicate build(:user), :valid?
  end

  test 'requires a name' do
    user = build(:user)
    user.name = nil
    assert_not_predicate user, :valid?

    user.name = ''
    assert_not_predicate user, :valid?
  end

  test 'requires a valid email address' do
    user = build(:user)
    user.email = 'not an email'
    assert_not_predicate user, :valid?
  end

  test 'requires a password' do
    user = build(:user)
    user.password = nil
    assert_not_predicate user, :valid?

    user.password = 'short'
    assert_not_predicate user, :valid?
  end
end
