class Profile < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  validates :phone, presence: true
  validates :user_id, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :location
end
