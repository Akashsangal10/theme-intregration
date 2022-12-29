class AddColumnImagesToBusinessAndDigitalmarketing < ActiveRecord::Migration[7.0]
  def change
    add_column :business_and_digitalmarketings, :image1, :string
    add_column :business_and_digitalmarketings, :image2, :string
    add_column :business_and_digitalmarketings, :image3, :string
  end
end
