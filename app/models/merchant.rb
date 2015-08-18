class Merchant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  self.table_name = 'users'
  @@role = 'merchant'

  devise :database_authenticatable,
         :rememberable, :trackable,
         :validatable
  validates :username, presence: true

  default_scope {where('role=?', @@role)}

  before_create do
    self.role = @@role
  end
end
