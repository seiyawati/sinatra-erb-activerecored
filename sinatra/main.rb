require 'sinatra'
require 'sinatra/reloader' if settings.development?

get '/' do
  "<h1>Hello World!</h1>"
end

get '/users' do
  user_name = params[:name]
  "<h1>#{user_name}</h1><p>Seiya Kawamoto</p><p>Tarou Yamada</p>"
end

get '/animals/:name' do
  name = params[:name]
  "<h1>#{name}</h1><p>Dog</p><p>Cat</p>"
end

get '/time' do
  "<p>#{Time.now.strftime("%F")}</p>"
end

get '/users/:name' do
  name = params[:name]
  "<h1>#{name}のマイページ</h1>"
end

get '/product/:num1/:num2' do
  result = params[:num1].to_i * params[:num2].to_i
  "<h1>#{result}</h1>"
end