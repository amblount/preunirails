class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.belongs_to :center, foreign_key: true
      t.belongs_to :classroom, foreign_key: true

      t.timestamps
    end
  end
end
