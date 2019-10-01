class Drink < ApplicationRecord
    has_many :proportions
    has_many :ingredients, through: :proportions
    accepts_nested_attributes_for :proportions
end
