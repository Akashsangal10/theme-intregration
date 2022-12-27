class CreateStartProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :start_projects do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
