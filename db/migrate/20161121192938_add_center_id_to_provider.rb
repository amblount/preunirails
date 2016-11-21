class AddCenterIdToProvider < ActiveRecord::Migration[5.0]
  def change
    add_reference :providers, :center, foreign_key: true
  end
end
