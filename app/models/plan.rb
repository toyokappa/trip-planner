class Plan < ApplicationRecord
  has_many :spot
  varidates :name, presence: true, length: { maximum: 50 }
  varidates :description, length: { maximum: 1000 }
end
