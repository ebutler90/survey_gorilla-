get '/survey/new' do
  # redirect '/authentication/signin' if !current_user
  # uncomment line 2 and 3 after inplementing auth.
  erb :'/survey/new'
end

post '/survey/new' do
  params[:user_id] = session[:user_id]
  @survey = Survey.create(params)
  redirect "/survey/#{@survey.id}/edit"
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :'/survey/show'
end

get '/survey/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :'/survey/edit'
end
