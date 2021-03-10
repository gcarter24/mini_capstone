class Image < ApplicationRecord
  validates :url, uniqueness: true
  belongs_to :product
end
