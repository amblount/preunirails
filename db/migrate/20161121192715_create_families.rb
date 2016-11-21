class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :last_name
      t.belongs_to :center, foreign_key: true

      t.timestamps
    end
  end
end
