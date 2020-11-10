class Estate < ApplicationRecord
    belongs_to :user
    has_many_attached :photos
    belongs_to :location, optional: true

    scope :latest, -> { order created_at: :desc }
end
