class Product < ApplicationRecord
    has_many :proportions
    has_many :drinks, through: :proportions
    belongs_to :user
end
