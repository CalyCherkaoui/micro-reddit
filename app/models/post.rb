class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimun: 5 }, too_short: 'Get serious!!!'
  validates :body, presence: true, length: { minimun: 5 }, too_short: 'Come on!!! This is toooooo short'
end
