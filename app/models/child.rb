class Child < ApplicationRecord
  has_one :families
  has_many :guardians, through: :families

end
