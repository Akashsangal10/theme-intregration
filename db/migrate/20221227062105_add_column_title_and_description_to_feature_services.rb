class AddColumnTitleAndDescriptionToFeatureServices < ActiveRecord::Migration[7.0]
  def change
    add_column :feature_services, :title, :string
    add_column :feature_services, :description, :string
  end
end
