class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :price
      t.binary :image

      t.timestamps
    end
  end
end
