class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.belongs_to :center, foreign_key: true
      t.belongs_to :child, foreign_key: true

      t.timestamps
    end
  end
end
