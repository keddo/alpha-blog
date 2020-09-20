class User < ApplicationRecord
  has_many :articles
  before_save {self.email = email.downcase}
  VALIDATE_EMAIL_REGEX =  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105 },
                                format: { with: VALIDATE_EMAIL_REGEX }
  has_secure_password
end