class CreateChildFamilyGuardianProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :child_family_guardian_providers do |t|
      t.belongs_to :child, foreign_key: true
      t.belongs_to :family, foreign_key: true
      t.belongs_to :guardian, foreign_key: true
      t.belongs_to :provider, foreign_key: true

      t.timestamps
    end
  end
end
