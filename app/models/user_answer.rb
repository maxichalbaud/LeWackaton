class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def self.generate_course_answers(params, user_id)
    params.keys.each do |question_id, answer|
      answer = UserAnswer.new(question_id: question_id, answer: answer, user_id: user_id)
      answer.save
    end
  end
end
