class FormFieldInstance < ApplicationRecord
  belongs_to :form_field
  belongs_to :form_instance
end
