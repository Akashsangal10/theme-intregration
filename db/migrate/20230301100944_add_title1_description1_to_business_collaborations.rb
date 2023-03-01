class AddTitle1Description1ToBusinessCollaborations < ActiveRecord::Migration[7.0]
  def change
    add_column :business_collaborations, :title1, :string
    add_column :business_collaborations, :description1, :string
  end
end
