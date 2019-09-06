class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :price
      t.string :neighbourhood
      t.integer :postal_code
      t.text :description
      t.string :phone_number
      t.integer :user_id
      t.integer :category_id
      t.integer :city_id
      t.string :pictures
      t.boolean :active

      t.timestamps
    end
  end
end
