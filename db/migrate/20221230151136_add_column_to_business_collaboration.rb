class AddColumnToBusinessCollaboration < ActiveRecord::Migration[7.0]
  def change
    add_column :business_collaborations, :image1, :string
    add_column :business_collaborations, :image2, :string
  end
end
