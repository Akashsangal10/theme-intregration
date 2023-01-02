class AddColumnTitleToAboutCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :about_companies, :title6, :string
    add_column :about_companies, :description7, :string
  end
end
