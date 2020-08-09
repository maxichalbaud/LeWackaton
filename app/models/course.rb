class Course < ApplicationRecord
  belongs_to :company
  has_many :questions, dependent: :destroy
  has_many :user_courses, dependent: :destroy
  has_many :users, through: :user_courses

  enum category: { web_development: 0, data_science: 1, digital_marketing: 2, product_managemet: 3 }
end
