require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'table name shoud be the same as User' do
    assert_equal User.table_name, Admin.table_name
  end

  test 'role should be admin' do
    user = Admin.create(username: 'admin001',
                mobile: '13551029440',
                email: 'admin001@example.com',
                password: '12345678',
                password_confirmation: '12345678')
    assert_equal user.role, 'admin'
  end
end
