class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }
  validates :nickname, uniqueness: { case_sensitive: false }
end
