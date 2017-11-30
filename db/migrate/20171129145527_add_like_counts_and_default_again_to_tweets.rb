class AddLikeCountsAndDefaultAgainToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :like_counter, :integer, :default => 0
  end
end
