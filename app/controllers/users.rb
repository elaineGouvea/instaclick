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
    redirect '/'
  else
    status 422
    @errors =@users.errors.full_messages
    erb :'users/new'
  end
end

