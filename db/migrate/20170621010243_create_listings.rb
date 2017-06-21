class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :listings, :slug, unique: true
  end
end
