class Tweet < ApplicationRecord
  validates :post, presence: true, length: { in: 3..140 }
  belongs_to :User
  #scope :newest_first, order(created_at: :desc)
  default_scope { order("created_at DESC") }
end
