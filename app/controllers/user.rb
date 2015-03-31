get '/user/:id/show' do
  erb :'user/show', locals: {surveys: current_user.surveys}
end

# get 'user/:user_id/survey/:survey_id/results' do
#   user = User.find(:user_id)
#   survey = Survey.find(:survey_id)
#   p '_____________________'
#   p params
#   p '________________________'
#   erb :'user/survey_results', locals: {user: user, survey: survey}
# end

# post 'user/:user_id/survey/:survey_id/results' do
#   p"*************************"
#   p params
#   p "*************************"
#   Result.create(choice: params[:choice], question: params[:question])

# end
