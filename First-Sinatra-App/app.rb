require 'sinatra'

# get '/' do
#     @name = "Jhon"
#     erb :index, layout: :layout_home
# end

get '/home' do
    @greet = "Lorem ipsum dolor si consectetur adipisicing ve numquam error reprehenderit dicta natus atque voluptate!"
    erb :home, layout: :layout_home
end

get '/contact' do
    erb :contact, layout: :layout_home

end

get '/products' do
    erb :products
end

#query string. Se necesita ?name = xxx para invocarlo
get '/greet' do
    "Hola #{params[:name]}"
end

get 'age-in-5-years/:age' do

    @age = params[:age].to_i
    "Tu edad en 5 años sera: #{@age + 5}"
end

# get '/' do
#     status 200
#     headers "Content-Type" => "text/html"
#     erb: index
# end

get '/' do
    [200, {"Content-Type" => "text/html"}, "Hola mundo"]
end

get '/form' do
  erb :form
end 

post '/hello-from-form' do
  name=params[:name]
  "Hola #{name}"
end 


# #Calcule el area de un cuadrado
# get '/parameters' do
#     "El area del rectangulo es #{params[:base].to_i * params[:altura].to_i}"
# end



# post '/make-a-post' do
#     [200, {"Content-Type" => "text/html"}, "Acabas de hacer un post"]
# end

# put '/make-a-put' do
#     [200, {"Content-Type" => "text/html"}, "Acabas de hacer un put"]
# end

# delete '/make-a-delete' do
#     [200, {"Content-Type" => "text/html"}, "Acabas de hacer un delete"]
# end

# HTTParty.put('http://localhost:4567/make-a-put', :headers => {"Content-Type" => "application/json"})
