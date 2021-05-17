class Shoe < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 6}
  validates :brand, presence: true
  validates :model, presence: true
  validates :purchasing_date, presence: true # inclusion: in: => {(DelayedEvalRange.new() ((20.years.ago)..Date.today)}
  validates :color, presence: true
  validates :daily_pricing, presence: true, format: { with: /\A\d+(?:\.\d{0,1})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
end
