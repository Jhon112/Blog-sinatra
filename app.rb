# En la app sinatra crear un formulario que reciba: 
#Nombre, apellido, edad, email, dirección, genero y redirigirlo a una vista donde muestre toda esta 
#información de forma ordenada, utilicen bootstrap en todos los elementos, agregando un header en el layout.
require 'sinatra'



get '/login' do
    erb :login
end

post '/login' do
    response.set_cookie('email', value: params[:email])
    response.set_cookie('password', value: params[:password])
    redirect '/'
end

get "/form" do
    erb :form
end

post "/form-return" do
    @name=params[:name]
    @surname=params[:surname]
    @age=params[:age]
    @email=params[:email]
    @address=params[:address]
    @gender=params[:gender]
end

