class Location < ApplicationRecord
  belongs_to :shoe
  belongs_to :user
  has_one_attached :photo

  validates :date_beginning, presence: true
  validates :date_end, presence: true
end
