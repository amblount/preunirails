class Center < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :center_child
  belongs_to :child
end
