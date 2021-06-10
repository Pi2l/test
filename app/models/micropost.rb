class Micropost < ApplicationRecord
  validates :content, length: { 
    minimum: 3, 
    maximum: 140, # as TWITTER posts
  }
  validates :user_id, presence: true
  belongs_to :user
end
