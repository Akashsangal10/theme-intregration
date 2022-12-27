class CreateServiceContents < ActiveRecord::Migration[7.0]
  def change
    create_table :service_contents do |t|
      t.string :title1
      t.string :description1
      t.string :title2
      t.string :description2
      t.string :title3
      t.string :description3

      t.timestamps
    end
  end
end
