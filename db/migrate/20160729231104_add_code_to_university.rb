class AddCodeToUniversity < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :code, :string
  end
end
