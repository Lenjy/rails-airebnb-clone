class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :title
      t.string :description
      t.string :brand
      t.string :model
      t.date :purchasing_date
      t.string :color
      t.integer :daily_pricing
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
