class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :add1
      t.string :add2
      t.string :city
      t.string :state_code
      t.string :zipcode

      t.timestamps
    end
  end
end
