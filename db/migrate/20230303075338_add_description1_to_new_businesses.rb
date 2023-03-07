class AddDescription1ToNewBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_column :new_businesses, :description2, :string
    add_column :new_businesses, :description3, :string
    add_column :new_businesses, :description4, :string
  end
end
