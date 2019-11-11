class Image < ApplicationRecord
    belongs_to :record
    has_one_attached :photo
end
