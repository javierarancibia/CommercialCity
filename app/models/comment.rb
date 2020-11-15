class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :profile
    validates :user_id, presence: true
    validates :profile_id, presence: true
    validates :content, presence: true
    validates :rate, presence: true
end
