class CreateGetInTouches < ActiveRecord::Migration[7.0]
  def change
    create_table :get_in_touches do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
