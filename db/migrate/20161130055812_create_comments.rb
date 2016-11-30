class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true # so you can quickly look up what user owns what comment

      t.timestamps null: false
    end
    add_index :comments, [:user_id, :created_at]
  end
end
