class AddLikeCountsToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :like_counter, :integer
  end
end
