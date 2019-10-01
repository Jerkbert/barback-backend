class Proportion < ApplicationRecord
  belongs_to :drink
  belongs_to :product
  accepts_nested_attributes_for :product
end
