require 'sinatra'
require 'erb'

get '/' do
  current = Time.now
  # erb = ERB.new(File.read("./views/index.html.erb"))
  # erb.result(binding)
  # 上の処理と同じことをsinatraがやってくれる。
  erb :index
end
