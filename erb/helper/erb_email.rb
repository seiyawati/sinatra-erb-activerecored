require 'erb'

name = 'Seiya Kawamoto'
email = 'kid960805@gmail.com'

erb = ERB.new(File.read('sample.txt.erb'))
result = erb.result(binding)
File.write('sample.txt', result)
