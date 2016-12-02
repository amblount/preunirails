class Student < ApplicationRecord
  belongs_to :center
  belongs_to :child
  belongs_to :provider
end
