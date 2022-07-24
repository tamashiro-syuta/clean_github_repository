# githubのリポジトリをお掃除するようのスクリプト

## 事前準備
- fishのセットアップ
- github cliのセットアップ

## 使用方法
1.対象ファイル(`.env`と`delete_target.txt`)の作成


2.`.env`に自分のgithubのユーザーネームを追加


3.github cliのコマンドを利用して、`delete_target.txt`に、ファイルを書き込み(`--language`オプションなどで絞り込むのも良いかも)
```
gh repo list --json name --jq '.[].name' >> delete_repo.txt
```


4.`delete_target.txt`から、残したいリポジトリを削除 (※これやらないと大変なことになります)


5.お掃除タイム(削除)
```
fish delete_repo.sh
```


## 参考記事
- [【小ネタ】不要な GitHub リポジトリを一括削除する](https://dev.classmethod.jp/articles/git-hub-repo-delete/)
- [コマンドでGitHubリポジトリ一覧を取得する](https://qiita.com/inayuky/items/a127e99d81a9fe3fdea7)  
