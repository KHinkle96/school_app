class School < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :capacity, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 52000 }
  validates :name, presence: true
  validates :address, presence: true
  validates :principal, presence: true
  validates :capacity, presence: true
  validates :name, uniqueness: true
end
