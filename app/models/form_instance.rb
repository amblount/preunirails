class FormInstance < ApplicationRecord
  belongs_to :form
  has_many :form_field_instances
  has_many :form_fields, through: :form_field_instances
end
