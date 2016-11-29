class Family < ApplicationRecord
  has_many :child_family_guardian_providers
  has_many :children, :through => :child_family_guardian_providers
  has_many :guardians, :through => :child_family_guardian_providers
  has_many :providers, :through => :child_family_guardian_providers
end
