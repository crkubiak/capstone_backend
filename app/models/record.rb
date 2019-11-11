class Record < ApplicationRecord
    has_many_attached :images
    validates :location, :comment, presence: true
    validates_uniqueness_of :location
end