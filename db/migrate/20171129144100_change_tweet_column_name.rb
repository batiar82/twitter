class ChangeTweetColumnName < ActiveRecord::Migration[5.1]
  def change
    drop_table :tweets
    create_table :tweets do |t|
      t.text :post
      t.references :user, foreign_key: true

      t.timestamps
    end
    #rename_column :tweets, :User_id, :user_id
  end
end
