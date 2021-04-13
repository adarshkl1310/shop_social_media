class User < ApplicationRecord
has_many :homes
has_many :homecomments
has_many :shops
has_many :shopcomments
has_many :profiles
has_many :products
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

def self.search(search)
  if search
  self.where("name like ?", "%#{search}%")
  else
  self.all
  end
end





end
