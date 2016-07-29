class AddAddressToGym < ActiveRecord::Migration[5.0]
  def change
    add_reference :gyms, :address, foreign_key: true
  end
end
