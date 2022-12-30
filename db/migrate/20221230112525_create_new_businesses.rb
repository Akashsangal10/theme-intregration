class CreateNewBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :new_businesses do |t|
      t.string :title
      t.string :description
      t.string :description1
      t.string :title1
      t.string :title2
      t.string :title3

      t.timestamps
    end
  end
end
