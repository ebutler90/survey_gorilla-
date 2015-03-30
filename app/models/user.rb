class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys

  has_many :completed_surveys, class_name: "Completion"
  # has_many :surveys, through: :completions

end
