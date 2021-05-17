class Location < ApplicationRecord
  belongs_to :shoe
  belongs_to :user

  validates :date_beginning, presence: true
  validates :date_end, presence: true
  validates :location_pricing, presence: true, format: { with: /\A\d+(?:\.\d{0,1})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
end
