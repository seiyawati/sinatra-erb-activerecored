require 'erb'

num = 12
current = Time.now.strftime("%Y年%m月%d日 %H時%M分")
erb = ERB.new(File.read('index.html.erb'))
# resultでerb内のrubyコードを実行し、htmlに変換
# binding -> 変数はここで定義しているものに限るという制限(おまじない)
result = erb.result(binding) # -> str(文字列)
File.write('index.html', result)