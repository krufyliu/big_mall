class Merchant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  self.table_name = 'users'
  @@role = 'merchant'

  attr_accessor :signin

  devise :database_authenticatable,
         :rememberable, :trackable,
         :validatable
  validates :username, presence: true

  default_scope {where('role=?', @@role)}

  before_create do
    self.role = @@role
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if signin = conditions.delete(:signin)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => signin.downcase }]).first
    else
      where(conditions).first
    end
  end
end
