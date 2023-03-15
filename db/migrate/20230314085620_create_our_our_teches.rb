class CreateOurOurTeches < ActiveRecord::Migration[7.0]
  def change
    create_table :our_our_teches do |t|
      t.string :title
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
