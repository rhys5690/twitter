class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        t.integer :post_id
      t.timestamps null: false
    end
  end
end
