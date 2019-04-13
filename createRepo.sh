
read -p "Enter username: " username

read -p "Enter reponame: " repo


curl -u $username https://api.github.com/user/repos -d '{"name": "'"$repo"'"}' 


