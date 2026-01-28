SELECT tweet FROM tweets
INNER JOIN users
ON tweets.user_id = users.id
WHERE first_name = "John" AND last_name = "Doe"
LIMIT 0, 25; --localhostで行数エラーが出たため追記
