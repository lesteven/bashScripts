
read -p "Enter username: " username

read -p "Enter reponame: " repo

read -p "Private? true(1) or false(0): " private

if [ $private = true ] || [ $private = 1 ];then
    curl -u $username https://api.github.com/user/repos -d \
        '{"name": "'$repo'", "private": "'$private'"}' 
else
    curl -u $username https://api.github.com/user/repos -d \
        '{"name": "'$repo'"}' 
fi




