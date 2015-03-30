class Choice < ActiveRecord::Base
  has_many :results
  belongs_to :question
end
