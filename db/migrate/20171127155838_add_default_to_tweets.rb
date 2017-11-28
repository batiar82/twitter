class AddDefaultToTweets < ActiveRecord::Migration[5.1]
  def change
    change_column_default :tweets, :like_counter, 0
  end

#  def down
 #   change_column_default :tweets, :like_counter, nil
#  end
end
