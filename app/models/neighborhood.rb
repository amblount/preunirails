class Neighborhood < ApplicationRecord
	# belongs_to :gaurdian
	# belongs_to :provider
	has_many :centers
end
