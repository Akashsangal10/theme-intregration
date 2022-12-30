class RemoveColumnImagesInTableFromBusinessAndDigitalmarketing < ActiveRecord::Migration[7.0]
  def change
    remove_column :business_and_digitalmarketings, :image, :string
  end
end
