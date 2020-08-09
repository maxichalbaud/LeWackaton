class Company < ApplicationRecord
  has_many :courses, dependent: :destroy
  validates :name, uniqueness: true
end
