class AddTitleToOurcompanie < ActiveRecord::Migration[7.0]
  def change
    add_column :ourcompanies, :title, :string
  end
end
