class Shop < ApplicationRecord
belongs_to :user
has_many :shopcomments,dependent: :destroy

has_attached_file :shop_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :shop_image, content_type: /\Aimage\/.*\z/


def self.search(search)
  if search
  self.where("shop_name like ?", "%#{search}%")
  else
  self.all
  end
end


end
