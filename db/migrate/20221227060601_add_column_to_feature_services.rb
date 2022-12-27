class AddColumnToFeatureServices < ActiveRecord::Migration[7.0]
  def change
    add_column :feature_services, :image1, :string
    add_column :feature_services, :image2, :string
    add_column :feature_services, :image3, :string
    add_column :feature_services, :image4, :string
    add_column :feature_services, :image5, :string
    add_column :feature_services, :image6, :string
  end
end
