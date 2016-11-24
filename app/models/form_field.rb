class FormField < ApplicationRecord
  belongs_to :form
  has_many :form_field_instances
end
