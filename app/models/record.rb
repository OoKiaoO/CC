class Record < ApplicationRecord
  belongs_to :user
  has_many :food_entries #dependent: :destroy

  validates :total_cal, presence: true, numericality: true
  validates :date, presence: true
  vaidates :meal_type, presence: true, inclusion: { in: %w(breakfast lunch snack dinner) }
end
