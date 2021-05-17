class CreateLinkToCats < ActiveRecord::Migration[6.0]
  def change
    create_table :link_to_cats do |t|
      t.references :cartegory, null: false, foreign_key: true
      t.references :shoe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
