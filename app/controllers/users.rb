# Signup
# 1st part:
get '/users/new' do
  erb :'users/new'
end
# 2nd part:
post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:id] = @user.id
    redirect "users/#{user.id}"
  else
    @errors =@users.errors.full_messages
    erb :'/users/new'
  end
end

