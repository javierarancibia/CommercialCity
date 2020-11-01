class Estate < ApplicationRecord
    belongs_to :user
    has_many_attached :photos

    scope :latest, -> { order created_at: :desc }
end
