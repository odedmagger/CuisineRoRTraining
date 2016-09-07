class CuisineType < ApplicationRecord

  has_many :restaurants

  validates :name, :image_icon, presence: true
  validates :name, uniqueness: true
end
