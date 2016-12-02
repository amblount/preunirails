class Center < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :provider
  has_many :classrooms
  has_many :students
  has_many :instructors
end
