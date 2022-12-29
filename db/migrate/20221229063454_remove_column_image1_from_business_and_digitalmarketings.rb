class RemoveColumnImage1FromBusinessAndDigitalmarketings < ActiveRecord::Migration[7.0]
  def change
    remove_column :business_and_digitalmarketings, :image1, :string
    remove_column :business_and_digitalmarketings, :image2, :string
    remove_column :business_and_digitalmarketings, :image3, :string
  end
end
