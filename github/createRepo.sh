
source ~/.misc/ghToken.sh

read -p "Enter reponame: " repo

read -p "Private? true(1) or false(0): " private


if [ $private = true ] || [ $private = 1 ];then
    private=true
else
    private=false
fi

curl https://api.github.com/user/repos \
    -H 'Authorization: token '$token'' \
    -d '{"name":"'$repo'","private":'$private'}' 


