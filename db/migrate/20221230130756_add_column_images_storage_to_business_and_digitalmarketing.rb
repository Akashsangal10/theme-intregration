class AddColumnImagesStorageToBusinessAndDigitalmarketing < ActiveRecord::Migration[7.0]
  def change
    add_column :business_and_digitalmarketings, :image, :string
  end
end
