class CreateFeatureServices < ActiveRecord::Migration[7.0]
  def change
    create_table :feature_services do |t|
      t.string :title1
      t.string :description1
      t.string :title2
      t.string :description2
      t.string :title3
      t.string :description3
      t.string :title4
      t.string :description4
      t.string :title5
      t.string :description5
      t.string :title6
      t.string :description6

      t.timestamps
    end
  end
end
