class CreateFollows < ActiveRecord::Migration[5.1]
  def up
    create_table :follows do |t|
      t.references :follower
      t.references :followee

      t.timestamps
    end
    add_foreign_key :follows, :user, column: :follower_id, primary_key: :id
    add_foreign_key :follows, :user, column: :followee_id, primary_key: :id
  end
end
