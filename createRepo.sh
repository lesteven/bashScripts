
read -p "Enter username: " username

read -p "Enter reponame: " repo

read -p "Private? true or false: " private

curl -u $username https://api.github.com/user/repos -d \
    '{"name": "'$repo'", "private": "'$private'"}' 


