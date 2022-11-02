class Paper < ApplicationRecord

    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
