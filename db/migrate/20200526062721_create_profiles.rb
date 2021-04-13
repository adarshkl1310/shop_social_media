class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :date_of_birth
      t.timestamps
    end
  end
end
