require 'sinatra'

get '/' do
    @name = "Jhon"
    erb :index
end

get '/home' do
    @saludo = "Welcome to my first app."
    erd :home
end

get '/contact' do
    @email = "jhonarmont@hotmail.com"
    @telefono = "2984384"
    erb :contact

end

get '/products' do
    @productos = ["Perro, Hamburguesa", "Salchipapas"]
    erb :products
end