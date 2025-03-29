class Comment < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :user_id, :post_id, presence: true

  belongs_to :user
  belongs_to :post
end
