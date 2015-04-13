class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :liked
      t.references :user

      t.timestamps null: false
    end
  end
end
