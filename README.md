# README

## 環境構築
```
$ bundle install
$ bin/rails db:setup
$ yarn install
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください

### 選択した事業側の課題
直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？

### 提案内容
各ユーザーが任意のグループを作成、参加できるようにする。たとえば趣味等のグループを作り、もくもく会以外でのオンラインコミュニティを活性化する。黙々会の参加以外で横の繋がりを作りユーザーの交流を促し、もくもく会に参加する心理的ハードルを下げられるようにする。

### 実装方針
・新たにグループ作成機能を追加する。グループ作成画面へのリンクをヘッダーに追加する。
・グループ作成時にグループ名と紹介文を登録できるようにする。
・グループの編集はグループの作成者のみが行えるようにする。
・グループの一覧、詳細、編集、作成画面を用意する。
・グループごとにコメントができるようにし、グループに所属しているユーザはコメント使って他のユーザとやりとりできるようにする。
