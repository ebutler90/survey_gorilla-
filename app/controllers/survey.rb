get '/survey/new' do
  redirect '/signin' if !current_user
  erb :'/survey/new'
end

post '/survey/new' do
  p "********************"
  p params
  p "********************"
  survey = Survey.create(title: params[:title])


  # q = Question.create(content: params[:question])



  # survey.questions <<
  # params[:user_id] = session[:user_id]
  # @survey = Survey.create(params)
  # redirect '/'
  redirect "/survey/#{survey.id}/edit"
end




get '/survey/:id' do
  survey = Survey.find(params[:id])
  erb :'/survey/show', locals: {survey: survey, questions: survey.questions}
end

get '/survey/:id/edit' do
  survey = Survey.find(params[:id])
  erb :'/survey/edit', locals: {survey: survey, questions: survey.questions}
end

get '/survey/:id/results' do
  @survey = Survey.find(params[:id])
  erb :'survey/results'
end

post '/survey/:id/results' do
  params[:choice].each do |question_id, choice_id|
    result = Result.new(choice: Choice.find(choice_id),
                  question: Question.find(question_id),
                  user: current_user)
    result.save!
  end
  redirect "/user/#{current_user.id}/show"
end

delete '/survey/:id/delete' do
  @current_survey = Survey.find_by(id: params[:id])
  @current_survey.destroy
  redirect "/user/#{current_user.id}/show"

end

put '/survey/:id' do
  @survey = Survey.find(params[:id])
  p "********************"
  p params
  p "********************"



  # redirect '/survey/#{:id}/edit'
  # erb :'/survey/edit'

end

post '/survey/:id/question/new' do
  survey = Survey.find(params[:id])
  p "********************"
  p params
  p "********************"

  redirect "/survey/#{params[:id]}/edit"
end

