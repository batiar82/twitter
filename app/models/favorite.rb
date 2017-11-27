class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  after_save do
    self.tweet.increment!(:like_counter)
  end
  before_destroy do
    self.tweet.decrement!(:like_counter)
  end
  
end
