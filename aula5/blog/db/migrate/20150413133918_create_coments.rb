class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.references :users, index: true, foreign_key: true
      t.text :coment
      t.references :posts, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
