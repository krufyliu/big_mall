require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'role should be user' do
    user = User.new(username: 'user001',
                mobile: '13651029440',
                email: 'user001@example.com',
                password: '12345678')
    assert user.save
    assert_equal user.role, 'user'
  end
end
