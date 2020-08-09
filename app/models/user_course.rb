class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :user, uniqueness: { scope: :course }

  enum status: { pending: 0, questions_completed: 1, project_completed: 2, finished: 3 }
end
