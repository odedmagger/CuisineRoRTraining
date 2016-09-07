class Restaurant < ApplicationRecord

  belongs_to :cuisine_type, optional: true

  validates :name, :address, presence: true
  validates :name, uniqueness: true
  validates :delivery_time, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, :inclusion => { :in => 0..3 }
end
