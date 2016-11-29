class Child < ApplicationRecord
  has_one :center_child
  has_many :child_family_guardian_providers
  has_many :guardians, through: :child_family_guardian_provider

end
