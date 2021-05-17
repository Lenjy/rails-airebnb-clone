class Location < ApplicationRecord
  belongs_to :shoe
  belongs_to :user

  validates :date_beginning, presence: true
  validates :date_end, presence: true
end
