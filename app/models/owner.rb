class Owner < ActiveRecord::Base
  has_many :buildings, inverse_of: :owner, dependent: :nullify
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  def full_name
   "#{first_name} #{last_name}"
  end
end
