--問題 3
--問題: 「Jane Smith」が投稿したリプライをすべて取得してください。
--説明: usersテーブルとreplysテーブルを結合し、first_nameが”Jane”で、last_nameが”Smith”のユー
--ザーのリプライを取得します。

SELECT reply FROM `replys`
INNER JOIN users
ON replys.user_id = users.id
WHERE first_name = "Jane" AND last_name ="Smith"
LIMIT 0, 25; --localhostで行数エラーが出たため追記
