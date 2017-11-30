class Tweet < ApplicationRecord
  validates :post, presence: true, length: { in: 3..140 }
  belongs_to :user
  has_many :favorites
  has_many :users, through: :favorites
  #scope :newest_first, order(created_at: :desc)
  default_scope { order("created_at DESC") }
end
