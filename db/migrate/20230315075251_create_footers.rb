class CreateFooters < ActiveRecord::Migration[7.0]
  def change
    create_table :footers do |t|
      t.string :description
      t.string :address
      t.string :number

      t.timestamps
    end
  end
end
