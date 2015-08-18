require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'table name should be the same as User' do
    assert_equal User.table_name, Merchant.table_name
  end

  test 'role should be merchant' do
    user = Merchant.create(username: 'merchant001',
                mobile: '13251029440',
                email: 'merchant001@example.com',
                password: '12345678',
                password_confirmation: '12345678')
    assert_equal user.role, 'merchant'
  end
end
