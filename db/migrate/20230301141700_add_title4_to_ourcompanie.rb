class AddTitle4ToOurcompanie < ActiveRecord::Migration[7.0]
  def change
    add_column :ourcompanies, :title4, :string
    add_column :ourcompanies, :description4, :string
    add_column :ourcompanies, :title5, :string
    add_column :ourcompanies, :description5, :string
  end
end
