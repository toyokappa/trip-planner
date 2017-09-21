class Spot < ApplicationRecord
  belongs_to :plan
  varidates :name, presence: true, length: { maximum: 50 }
  varidates :description, length: { maximum: 1000 }
  varidates :repuired_time, length: { maximum: 4 }, numericality: true
  validates :plan_id, presence: true
end
