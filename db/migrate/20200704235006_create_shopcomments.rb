class CreateShopcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :shopcomments do |t|
      t.text :content
      t.references :shop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
