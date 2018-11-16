#/bin/sh
genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:1080"   --user-rule-from=user-rules.txt --pac-compress --gfwlist-url="https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt" --gfwlist-update-local -o autoproxy.pac
git add -A
git commit -m "`date +"%Y/%d/%m"` update"
git push -u origin master