# Signup - Create
# 1st part:
get '/users/new' do
  @user = User.new
  erb :'users/new'
end
# 2nd part:
post '/users' do
  @user = User.create(params[:user])

  if @user.valid?
    session[:id] = @user.id
    redirect '/'
  else
    status 400
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

