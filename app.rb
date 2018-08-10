# En la app sinatra crear un formulario que reciba:
#Nombre, apellido, edad, email, dirección, genero y redirigirlo a una vista donde muestre toda esta
#información de forma ordenada, utilicen bootstrap en todos los elementos, agregando un header en el layout.
require 'bundler/setup'
Bundler.require(:default)
require 'sqlite3'
require './models.rb'

set :database, "sqlite3:myblogdb.sqlite3"


get '/login' do
    erb :login
end

post '/login' do
    response.set_cookie('email', value: params[:email])
    response.set_cookie('password', value: params[:password])
    redirect '/home'
end

get '/home' do
  erb :home
end

get '/' do
    @posts = Post.all
    erb :index
end

post '/home' do
    @posts = Post.all
    @name = params[:name]
    @surname = params[:surname]
    @age = params[:age]
    @email = params[:email]
    @password = params[:password]
    @coonfpassword = params[:confpassword]
    @gender = params[:gender]
    erb :home
end

get "/form" do
  erb :form
end


get '/gallery' do
  erb :gallery
end








post '/post' do
    @post = Post.create(title: params[:title], body: params[:body])
    redirect '/'
end

get '/post/:id' do
    @post = Post.find(params[:id])
    erb :post_page
end




# post "/form-return" do
#     @name=params[:name]
#     @surname=params[:surname]
#     @age=params[:age]
#     @email=params[:email]
#     @password=params[:password]
#     @coonfpassword=params[:confpassword]
#     @gender=params[:gender]
# end
