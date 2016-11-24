class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.belongs_to :center, foreign_key: true

      t.timestamps
    end
  end
end
