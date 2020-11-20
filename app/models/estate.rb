class Estate < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many_attached :photos
    validates :photos, content_type: [:png, :jpg, :jpeg]
    validates :photos, limit: { max: 6 }

    has_many :visits, dependent: :destroy

    belongs_to :location, optional: true
    belongs_to :category, optional: true
    belongs_to :type, optional: true

    #validaciones
    validates :location_id, presence: true
    validates :address, presence: true
    validates :type_id, presence: true
    validates :price, presence: true
    validates :description, length: { maximum: 200 }



    scope :latest, -> { order created_at: :desc }
    # enum type: [:venta, :arriendo]
end
