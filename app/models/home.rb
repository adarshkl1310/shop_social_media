class Home < ApplicationRecord

belongs_to :user
has_many :homecomments,dependent: :destroy


has_attached_file :homeimage, styles: { medium: "320x320>", thumb: "100x100>" }
validates_attachment_content_type :homeimage, content_type: /\Aimage\/.*\z/


def self.search(search)
  if search
  self.where("LOWER(product_name) LIKE ?", "%#{search}%")
  else
  self.all
  end
end
 end



