class Ride < ApplicationRecord

  # ASSOCIATIONS
  belongs_to :driver

  # CALLBACKS
  before_validation :calculate_score, unless: :score?

  # VALIDATIONS
  validates :score, :ride_earnings, :commute_duration, :ride_duration, presence: true

  # SCOPES
  scope :by_score, -> { order(score: :desc) }

  # CLASS METHODS

  def calculate_score
    # Calculate the score of a ride in $ per hour as: (ride earnings) / (commute duration + ride duration).
    # EX: 70 / (334 + 395) 729 seconds OR 12.15 minutes OR 0.2025 hours
    self.score = ride_earnings / ((commute_duration + ride_duration) / 3600.0)
  end
end
