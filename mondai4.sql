SELECT *
FROM users
LEFT JOIN replys
ON users.id = replys.user_id
WHERE replys.user_id IS NULL
;
