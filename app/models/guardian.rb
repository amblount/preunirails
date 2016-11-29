class Guardian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :child_family_guardian_providers
  has_many :children, :through => :child_family_guardian_providers
  has_one :family, :through => :child_family_guardian_providers
  has_many :providers, :through => :child_family_guardian_providers
end
