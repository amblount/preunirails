class AddContentToFormField < ActiveRecord::Migration[5.0]
  def change
    add_column :form_fields, :content, :text
  end
end
