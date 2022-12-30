class BusinessCollaboration < ApplicationRecord
	# has_many_attached :images
	has_one_attached :image 
	has_one_attached :image1
	has_one_attached :image2
end
