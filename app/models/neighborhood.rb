class Neighborhood < ApplicationRecord
	has_many :gaurdians
	has_many :providers
	has_many :centers
end
