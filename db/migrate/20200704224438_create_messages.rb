class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.timestamps
      t.string :keywords
      t.string :keywords2
      t.string :keywords3
    end
  end
end

