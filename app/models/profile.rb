class Profile < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  validates :phone, presence: true
  validates :user_id, presence: true
  has_many :comments, dependent: :destroy

  validates :phone, length: { maximum: 12 }
  validates :secondary_number, length: { maximum: 12 }

end
