class CreateComemts < ActiveRecord::Migration
  def change
    create_table :comemts do |t|
      t.string :email
      t.string :content
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
