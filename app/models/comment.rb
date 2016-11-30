class Comment < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :user
  validates :user_id, presence: true #makes sure there is always a user id
  validates :content, presence: true
  default_scope -> { order(created_at: :desc) } #newest to oldest tweets
end
