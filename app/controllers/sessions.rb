# Login
get 'sessions/new' do
  erb :'sessions/new'
end

post 'sessions' do
  user = User.authenticate(params[:user][:email], params[:user][:password])
  if user
    session[user_id] = user.id
    redirect '/'
  else
    erb :'session/new'
  end
end

# Logout
delete 'sessions/:id' do 
  session.delete(:user_id)
  redirect '/'
end