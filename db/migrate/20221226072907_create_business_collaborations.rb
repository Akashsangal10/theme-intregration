class CreateBusinessCollaborations < ActiveRecord::Migration[7.0]
  def change
    create_table :business_collaborations do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
