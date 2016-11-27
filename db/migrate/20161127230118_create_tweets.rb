class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true # so you can quickly look up what user owns what tweet

      t.timestamps null: false
    end
    add_index :posts, [:user_id, :created_at]
  end
end
