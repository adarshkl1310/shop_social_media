class AddAttachmentShopImageToShops < ActiveRecord::Migration[5.2]
  def self.up
    change_table :shops do |t|
      t.attachment :shop_image
    end
  end

  def self.down
    remove_attachment :shops, :shop_image
  end
end
