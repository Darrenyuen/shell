# 切换git工作模式
# 0: git oa; 1: github.com
#!/bin/bash
cd ~/.ssh
#echo "$1"
if [ "$1" == "1" ] && [ -f "id_rsa_github" ]; then
        mv id_rsa id_rsa_gitoa
        mv id_rsa.pub id_rsa_gitoa.pub
        mv id_rsa_github id_rsa
        mv id_rsa_github.pub id_rsa.pub
        git config --global user.email "your A email"
        git config --global user.name "your A user name"
        echo "change git work mode to github success"
elif [ "$1" == "0" ] && [ -f "id_rsa_gitoa" ]; then
        mv id_rsa id_rsa_github
        mv id_rsa.pub id_rsa_github.pub
        mv id_rsa_gitoa id_rsa
        mv id_rsa_gitoa.pub id_rsa.pub
        git config --global user.email "your B email"
        git config --global user.name "your B user name"
        echo "change git work mode to gitoa success"
else
  echo "param invalid, please pass 0 or 1"
  echo "0 for gitoa; 1 for github.com"


