class Course < ApplicationRecord
  belongs_to :company
  has_many :questions
  has_many :user_courses
  has_many :users, through: :user_courses
end
