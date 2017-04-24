# Login - Show
get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  user = User.authenticate(params[:user][:email], params[:user][:password])
  if user
    session[:user_id] = user.id  
    redirect '/'
  else
    status 422
    @errors = ["Login failed. Try again!"]
    erb :'sessions/new'
  end

end

# Logout - Delete
delete '/sessions/:id' do 
  session.delete(:user_id)
  redirect '/'
end