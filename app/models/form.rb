class Form < ApplicationRecord
	has_many :form_fields
	has_many :form_instances, through: :form_fields 
end
