class Question < ApplicationRecord
  belongs_to :course
  has_many :user_answers, dependent: :destroy
end
