class Ourcompany < ApplicationRecord
	has_many_attached :images, :dependent => :destroy
end
