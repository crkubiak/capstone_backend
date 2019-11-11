class Record < ApplicationRecord
    validates :location, :comment, presence: true
    validates_uniqueness_of :location
end
