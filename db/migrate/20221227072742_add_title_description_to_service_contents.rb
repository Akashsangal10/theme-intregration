class AddTitleDescriptionToServiceContents < ActiveRecord::Migration[7.0]
  def change
    add_column :service_contents, :title, :string
    add_column :service_contents, :description, :string
  end
end
