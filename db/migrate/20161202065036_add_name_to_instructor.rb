class AddNameToInstructor < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :name, :string
  end
end
