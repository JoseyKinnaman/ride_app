class Ride < ApplicationRecord
  belongs_to :driver
  before_validation :calculate_score, unless: :score?
  validates :score, :ride_earnings, :commute_duration, :ride_duration, presence: true

  # Calculate the score of a ride in $ per hour as: (ride earnings) / (commute duration + ride duration).
  def calculate_score
    # 70 / (334 + 395) 729 seconds OR 12.15 minutes OR 0.2025 hours
    self.score = ride_earnings / ((commute_duration + ride_duration) / 3600.0)
  end
end
