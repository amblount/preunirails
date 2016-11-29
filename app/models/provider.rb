class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :child_family_guardian_providers
  has_many :children, :through => :child_family_guardian_providers
  has_many :guardians, :through => :child_family_guardian_providers
  has_many :families, :through => :child_family_guardian_providers
  has_many :centers
end
