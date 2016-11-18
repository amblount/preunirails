class CreateCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :full_address
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.string :latitude
      t.string :longitude
      t.references :neighborhood, foreign_key: true
      t.string :website
      t.integer :capacity

      t.timestamps
    end
  end
end
