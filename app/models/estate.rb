class Estate < ApplicationRecord
    belongs_to :user
    has_many_attached :photos
    belongs_to :location, optional: true
    belongs_to :category, optional: true
    belongs_to :type, optional: true

    scope :latest, -> { order created_at: :desc }
    # enum type: [:venta, :arriendo]
end
