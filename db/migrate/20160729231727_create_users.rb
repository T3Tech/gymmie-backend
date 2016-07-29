class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :description
      t.string :phone
      t.references :user_type, foreign_key: true
      t.references :gym, foreign_key: true

      t.timestamps
    end
  end
end
