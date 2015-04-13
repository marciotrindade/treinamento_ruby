class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :alias

      t.timestamps null: false
    end
    add_index :users, :email
    add_index :users, :alias
  end
end
