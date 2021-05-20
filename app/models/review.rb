class Review < ApplicationRecord
  RATING_RANGE = [*1..5]
  
  belongs_to :user
  belongs_to :shoe
  validates :comment, length: {minimum: 6}
  validates :rating, presence: true, inclusion: {in: RATING_RANGE, message: "%{value} is not a valid rating" }
end
