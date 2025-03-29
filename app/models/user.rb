class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, length: { in: 4..12 }, uniqueness: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 6..16 }

  has_many :posts
  has_many :comments
end
