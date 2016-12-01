class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments  
  validates :user_id, presence: true #makes sure there is always a user id
  validates :content, presence: true
  default_scope -> { order(created_at: :desc) } #newest to oldest tweets
end
