class CreateFormFields < ActiveRecord::Migration[5.0]
  def change
    create_table :form_fields do |t|
      t.string :name
      t.integer :location
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
