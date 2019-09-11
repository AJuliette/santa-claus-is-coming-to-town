class Participant < ApplicationRecord
  belongs_to :event

  validates :name, presence: true
  validates :email, presence: true

  validate :format_of_email

  def format_of_email
    unless email.match?(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/)
      errors.add(:email, 'is not in the right format')
    end
  end
end
