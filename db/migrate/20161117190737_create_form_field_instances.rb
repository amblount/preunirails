class CreateFormFieldInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :form_field_instances do |t|
      t.belongs_to :form_field, foreign_key: true
      t.belongs_to :form_instance, foreign_key: true
      t.string :signature

      t.timestamps
    end
  end
end
