SELECT reply FROM `replys`
INNER JOIN users
ON replys.user_id = users.id
WHERE first_name = "Jane" AND last_name ="Smith"
LIMIT 0, 25; --localhostで行数エラーが出たため追記
