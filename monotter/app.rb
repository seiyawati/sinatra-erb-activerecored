require 'sinatra'
require 'sinatra/reloader' if settings.development?
require 'active_record'
require './models/tweet'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'tweet.sqlite3')

enable :method_override

get '/' do
  # @tweets = Tweet.all.order('created_at DESC')
  @tweets = Tweet.all.reverse
  erb :index
end

post '/create' do
  Tweet.create(text: params[:text])
  redirect "/"
end

delete '/delete/:id' do
  Tweet.find(params[:id].to_i).destroy
  redirect "/"
end
