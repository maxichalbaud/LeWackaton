class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def self.generate_course_answers(params, user_id, user_course)
    sum = 0
    params.each do |question_id, answer|
      answer = answer == "true"
      sum += 1 if answer == Question.find(question_id).correct_answer
      answer = UserAnswer.new(question_id: question_id, answer: answer, user_id: user_id)
      answer.save
    end

    user_course.update(score: sum)
  end
end
