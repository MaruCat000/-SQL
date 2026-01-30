--問題 2
--問題: 「John Doe」が投稿したツイートをすべて取得してください。
--説明: usersテーブルとtweetsテーブルを結合し、first_nameが”John”で、last_nameが”Doe”のユー
--ザーのツイートを取得します。

SELECT tweet FROM tweets
INNER JOIN users
ON tweets.user_id = users.id
WHERE first_name = "John" AND last_name = "Doe"
LIMIT 0, 25; --localhostで行数エラーが出たため追記
