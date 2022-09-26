class Product < ApplicationRecord
    has_one_attached :pdf
    has_one_attached :photo

    validates :photo, presence: true, blob: {content_type: ["image/jpeg", "image/png"], size_range: 0..5.megabytes}
    validates :pdf, presence: true, blob: {content_type: ["application/pdf"], size_range: 0..5.megabytes}
end
