class AboutCompany < ApplicationRecord
	has_one_attached :image1
	has_one_attached :image2
	has_one_attached :image3
	has_one_attached :image4
end
