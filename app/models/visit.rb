class Visit < ApplicationRecord
  belongs_to :estate
  belongs_to :user

  validates :start, presence: true
  validates :end, presence: true
end
