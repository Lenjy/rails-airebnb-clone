class Shoe < ApplicationRecord
  SHOE_SIZES = [*34..50]
  GENDERS = ["Male", "Female", "For both"]

  belongs_to :user
  has_many :locations, dependent: :destroy
  has_many :reviews
  has_many :categories, through: :link_to_cats
  has_one_attached :photo
  accepts_nested_attributes_for :categories

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 6}
  validates :brand, presence: true
  validates :model, presence: true
  validates :purchasing_date, presence: true # inclusion: in: => {(DelayedEvalRange.new() ((20.years.ago)..Date.today)}
  validates :color, presence: true
  validates :daily_pricing, presence: true, format: { with: /\A\d+(?:\.\d{0,1})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
  validates :shoe_size, presence: true, inclusion: {in: SHOE_SIZES, message: "%{value} is not a valid shoe size" }
  validates :gender, presence: true, inclusion: {in: GENDERS, message: "%{value} is not a valid gender" }
end
