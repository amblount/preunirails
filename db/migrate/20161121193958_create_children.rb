class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
    
      t.timestamps
    end
  end
end
