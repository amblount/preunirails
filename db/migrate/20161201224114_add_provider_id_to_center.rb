class AddProviderIdToCenter < ActiveRecord::Migration[5.0]
  def change
    add_reference :centers, :provider, foreign_key: true
  end
end
