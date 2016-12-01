class Instructor < ApplicationRecord
  belongs_to :center
  belongs_to :classroom
end
