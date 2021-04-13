class AddAttachmentHomeimageToHomes < ActiveRecord::Migration[5.2]
  def self.up
    change_table :homes do |t|
      t.attachment :homeimage
    end
  end

  def self.down
    remove_attachment :homes, :homeimage
  end
end
