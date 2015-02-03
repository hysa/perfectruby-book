# coding: utf-8
# 外部コマンドの第1引数にハッシュを指定することができる
ENV['HOGE'] = 'huga'
system('echo $HOGE')  # "huga"

system({'HOGE' => 'piyo'}, 'echo $HOGE')

pid = spawn({'HOGE' => 'piyo'}, 'echo $HOGE')

Process.waitpid pid

exec({'HOGE' => 'piyo'}, 'echo $HOGE')
