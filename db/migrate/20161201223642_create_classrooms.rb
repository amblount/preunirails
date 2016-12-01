class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.belongs_to :center, foreign_key: true
      t.string :name
      t.integer :total_seats
      t.integer :enrolled_students
      t.integer :available_slots

      t.timestamps
    end
  end
end
