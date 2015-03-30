class Completion < ActiveRecord::Base
  has_and_belongs_to_many :survey_takers, class_name: "User"
  has_and_belongs_to_many :surveys
end
