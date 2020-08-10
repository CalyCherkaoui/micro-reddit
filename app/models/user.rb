class User < ApplicationRecord
  has_many :comments
  has_many :posts
  validates :name, presence: true
  validates_length_of :name, within: 6..20, too_long: 'pick a shorter name', too_short: 'pick a longer name'
  validates_uniqueness_of :email
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, presence: true, length: { minimum: 6 }
end
