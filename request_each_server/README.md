# 概要
ファイルで指定したサーバに対してcurlリクエストを送付して
サーバ名前とレスポンスコードを出力するプログラム

# 使い方
アクセスしたいURLのHostヘッダや他のヘッダ等があればcurlの行に指定する。
```
vim main.sh
```

引数にはファイルを与えます。
```
./main.sh serverlist.sample 
```

ファイルの中にはリクエストするサーバ一覧が含まれています。
```
$ cat serverlist.sample 
test1.co.jp
test2.co.jp
test3.co.jp
test4.co.jp
test5.co.jp
```

レスポンスコードとアクセスしたサーバが表示されます。
```
$ ./main.sh serverlist.sample 
Total Server count=5
200	test1.co.jp
200	test2.co.jp
200	test3.co.jp
200	test4.co.jp
200	test5.co.jp
```
