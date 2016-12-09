class Child < ApplicationRecord
  has_one :families
  has_many :guardians, through: :families
  accepts_nested_attributes_for :families

end
