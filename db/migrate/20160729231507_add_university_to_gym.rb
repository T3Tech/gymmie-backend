class AddUniversityToGym < ActiveRecord::Migration[5.0]
  def change
    add_reference :gyms, :university, foreign_key: true
  end
end
