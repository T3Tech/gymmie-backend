class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :name
      t.boolean :custom

      t.timestamps
    end
  end
end
