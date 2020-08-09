class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :user, uniqueness: { scope: :course }
  has_one_attached :file
  enum status: { pending: 0, questions_completed: 1, project_completed: 2, finished: 3 }

  after_update_commit :create_certificate

  def create_certificate
    if self.finished?
      certificate = Certificate.new(user: user, course: course)
      certificate.save
    end
  end
end
