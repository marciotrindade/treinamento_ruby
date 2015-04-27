class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :las_name
      t.integer :age
      t.string :email
      t.string :string

      t.timestamps null: false
    end
  end
end
