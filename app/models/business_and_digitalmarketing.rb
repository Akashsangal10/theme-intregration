class BusinessAndDigitalmarketing < ApplicationRecord
	has_many_attached :images, :dependent => :destroy
	# has_one_attached :image1
	# has_one_attached :image2
	# has_one_attached :image3
end
