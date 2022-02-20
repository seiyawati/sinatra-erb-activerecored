require 'erb'

class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end

users = [User.new("wati", 20), User.new("poti", 25), User.new("piti", 30)]

erb = ERB.new(File.read('index.html.erb'))
result = erb.result(binding)
File.write("index.html", result)