class CreateTeamBrainStrormings < ActiveRecord::Migration[7.0]
  def change
    create_table :team_brain_strormings do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
