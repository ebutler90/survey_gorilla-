# test
require 'faker'

angel = User.create(name: "Angel",
                    password: "123",
                    gender: "female",
                    age: 25,
                    email: "angel@gmail.com")
nandi = User.create(name: "Eveanandi",
                    password: "123",
                    gender: "female",
                    age: 24,
                    email: "nandi@gmail.com")
kiran = User.create(name: "Kiran",
                    password: "123",
                    gender: "male",
                    age: 27,
                    email: "kiran@gmail.com")

3.times do
  angel.surveys << Survey.create(title: "Best "+ Faker::Commerce.product_name)
  nandi.surveys << Survey.create(title: "Best "+ Faker::Commerce.product_name)
  kiran.surveys << Survey.create(title: "Best "+ Faker::Commerce.product_name)
end

test_survey = Survey.find(1)

q1 = Question.create(content: "What's your favorite gummy bear?", survey: test_survey)

3.times do
  q1.choices << Choice.create(content: Faker::Commerce.color)
end
