class AddColumnImageToBusinessCollaborations < ActiveRecord::Migration[7.0]
  def change
    add_column :business_collaborations, :image, :string
  end
end
