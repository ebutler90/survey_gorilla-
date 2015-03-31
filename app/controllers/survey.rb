get '/survey/new' do
  redirect '/signin' if !current_user
  erb :'/survey/new'
end

post '/survey/new' do
  params[:user_id] = session[:user_id]
  @survey = Survey.create(params)
  redirect "/survey/#{@survey.id}/edit"
end

get '/survey/:id' do
  survey = Survey.find(params[:id])
  erb :'/survey/show', locals: {survey: survey, questions: survey.questions}
end

get '/survey/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :'/survey/edit'
end

get '/survey/:id/results' do
  @survey = Survey.find(params[:id])
  erb :'survey/results'
end

post '/survey/:id/results' do
  p "*************************"
  p params
  p "*************************"

end

delete '/survey/:id/delete' do
@current_survey = Survey.find_by(id: params[:id])
@current_survey.destroy
redirect "/user/#{session[:user_id]}/show"

end

