class Student < ActiveRecord::Base
  attr_accessor :name, :phone
  validates :name, presence: true, length: { maximum: 50 }
  VALID_PHONE_REGEX = /\d{11}/
  validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }, uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6 }

end
