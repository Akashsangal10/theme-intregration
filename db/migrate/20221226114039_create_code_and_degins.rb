class CreateCodeAndDegins < ActiveRecord::Migration[7.0]
  def change
    create_table :code_and_degins do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
