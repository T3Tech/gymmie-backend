class AddCodeToGym < ActiveRecord::Migration[5.0]
  def change
    add_column :gyms, :code, :string
  end
end
