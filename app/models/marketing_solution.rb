class MarketingSolution < ApplicationRecord
	# has_many_attached :images, :dependent => :destroy
	has_one_attached :image
end
