class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_courses, dependent: :destroy
  has_many :courses, through: :user_courses
  has_many :user_answers
  has_one_attached :image
  accepts_nested_attributes_for :user_answers
end
