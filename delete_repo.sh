# .envファイルを読み込み
source ./.env

while read line do
  set reponame $USER_NAME"/"$line
  gh repo-delete $reponame
  echo "Delete "$reponame
end < delete_repo.txt
