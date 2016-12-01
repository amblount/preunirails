class Family < ApplicationRecord
  belongs_to :child
  belongs_to :guardian
  belongs_to :relationship
end
