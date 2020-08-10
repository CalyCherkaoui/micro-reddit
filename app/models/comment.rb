class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

    validates :body, presence:true, length: {minimun: 1}, too_short: 'minimun lenght for a comment is one character'
end
