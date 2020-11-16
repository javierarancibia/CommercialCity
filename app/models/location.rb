class Location < ApplicationRecord
    has_many :estates
    has_many :profiles
end
