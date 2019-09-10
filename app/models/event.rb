class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, inverse_of: :event
  accepts_nested_attributes_for :participants, reject_if: :all_blank, allow_destroy: true
end
