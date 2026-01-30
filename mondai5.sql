--問題 5
--問題: 「Charlie Brown」が投稿したツイートの数をカウントしてください。
--説明: usersテーブルとtweetsテーブルを結合し、first_nameが”Charlie”で、last_nameが”Brown”の
--ユーザーが投稿したツイートの件数をカウントします。

SELECT
	COUNT(*)
FROM tweets
LEFT JOIN users
ON tweets.user_id = users.id
WHERE first_name = "Charlie" AND last_name = "Brown"
;