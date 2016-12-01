class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.belongs_to :child, foreign_key: true
      t.belongs_to :guardian, foreign_key: true
      t.belongs_to :relationship, foreign_key: true

      t.timestamps
    end
  end
end
