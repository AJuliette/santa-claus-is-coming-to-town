class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, inverse_of: :event
  accepts_nested_attributes_for :participants, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :amount, numericality: { greater_than: 0 }, presence: true
  validates :participants, length: { minimum: 3, message: "must at least be 3" }
end
