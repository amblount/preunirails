class ChildFamilyGuardianProvider < ApplicationRecord
  belongs_to :child
  belongs_to :family
  belongs_to :guardian
  belongs_to :provider
end
