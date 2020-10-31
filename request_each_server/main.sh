#!/bin/sh

# 区切り文字を改行コードに指定
IFS=$'\n'

# ファイルを配列に読み込む
serverlist=(`cat "$1"`)

# 全部でファイルに何行あるかを表示する
echo "Total Server count=${#serverlist[@]}"

# 行ごとに繰り返し処理を実行
for server in "${serverlist[@]}"; do
	# TODO: Hostヘッダや他のヘッダはここに指定する
	curl -H "Host: www.xxx.co.jp" https://$server/ -o /dev/null -w "%{http_code}" -s
	echo "\t$server"
done

#################################
# curlのオプションで指定できる項目
#################################
# url_effective		: http://www.example.com/
# url_effective		: http://www.example.com/
# http_code		: 200
# http_connect		: 000
# time_total		: 0.404
# time_namelookup		: 0.013
# time_connect		: 0.222
# time_appconnect		: 0.000
# time_pretransfer		: 0.222
# time_redirect		: 0.000
# time_starttransfer		: 0.403
# size_download		: 1270
# size_upload		: 0
# size_header		: 322
# size_request		: 79
# speed_download		: 3146.000
# speed_upload		: 0.000
