class BrandItem < ApplicationRecord
  has_many :items
  has_many :brands
end
