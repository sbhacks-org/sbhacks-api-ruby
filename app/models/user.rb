class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: 'is not a valid email address'
  }
  validates :password, length: { in: 8..72 }
end
