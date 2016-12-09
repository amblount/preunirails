class Child < ApplicationRecord
  has_many :families
  has_many :guardians, through: :families
  accepts_nested_attributes_for :families

end
