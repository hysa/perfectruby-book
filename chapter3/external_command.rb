# coding: utf-8
# 外部コマンド実行方法

# 1. バッククォート
# 戻り値がかえってくる
num = 1
p `head -#{num} ~/.zshrc`  # => "# users generic .zshrc file for zsh(1)\n"


# 2. Kernel#system
#戻り値はboolean (実行に成功したかどうかがわかればいいときに使う)
system('uname')  # => true
p $?  # 直前のコマンドの終了ステータスは $? (Process::Statusオブジェクト)で確認できる

# 3. Kernel#spawn
# 外部コマンドの終了を待たずに即座に子プロセスのPIDを返す
pid = spawn('uname')
p pid

# 子プロセスの終了を待ち合わせる
Process.waitpid pid


# 4. Kernel#exec
# 実行中のRubyプロセスは外部コマンドのプロセスに変わる
# 外部コマンドが終了しても制御は戻らずプロセスが終了する
exec 'uname'
p 'hello'    # ここは実行されない
