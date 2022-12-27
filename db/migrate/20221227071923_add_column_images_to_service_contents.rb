class AddColumnImagesToServiceContents < ActiveRecord::Migration[7.0]
  def change
    add_column :service_contents, :image1, :string
    add_column :service_contents, :image2, :string
    add_column :service_contents, :image3, :string
  end
end
