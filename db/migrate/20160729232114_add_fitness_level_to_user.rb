class AddFitnessLevelToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fitness_level, :string
  end
end
