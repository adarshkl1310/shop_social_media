class CreateHomecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :homecomments do |t|
      t.text :content
      t.references :home, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
