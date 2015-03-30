get '/user/:id/show' do
  erb :'user/show', locals: {surveys: current_user.surveys}
end
