class Character < ApplicationRecord
  validates :level, presence: true,
                    numericality: {greater_than: 0}
end
