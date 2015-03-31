class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :completed_surveys, class_name: "Completion"
  has_many :survey_takers, class_name: "User", through: :completions
  has_many :questions
end
