class Shop < ApplicationRecord
  has_one :admin
  belongs_to :region
  belongs_to :brand
end
