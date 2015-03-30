get '/user/:id/show' do
  @current_user = User.find_by(id: session[:user_id])
  erb :'user/show'
end
