class AddVariablesToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :gender, :string
    add_column :shoes, :shoe_size, :integer
  end
end
