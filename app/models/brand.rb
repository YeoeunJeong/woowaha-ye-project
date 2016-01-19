class Brand < ApplicationRecord
  belongs_to :manufacturer
  has_many :shops
end
