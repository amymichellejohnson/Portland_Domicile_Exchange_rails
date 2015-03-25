class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :details
      t.string :location
      t.integer :price
      t.integer :user_id
      t.timestamps
    end
  end
end
