class Category < ApplicationRecord
  validates :name, presence: true
  has_many :shoes, through: :link_to_cats
end
