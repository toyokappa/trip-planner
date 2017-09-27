class Plan < ApplicationRecord
  has_many :spots, dependent: :destroy
  accepts_nested_attributes_for :spots, reject_if: lambda {|attributes| attributes['name'].blank?}, allow_destroy: true
  varidates :name, presence: true, length: { maximum: 50 }
  varidates :description, length: { maximum: 1000 }
end
