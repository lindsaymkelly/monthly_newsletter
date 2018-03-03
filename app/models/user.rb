class User < ApplicationRecord
  has_one :email_address

  validates :firstname, :lastname, presence: true
end
