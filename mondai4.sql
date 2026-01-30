--問題 4
--問題: どのツイートにもリプライをしていないユーザーの名前と姓を取得してください。
--説明: replysテーブルにレコードが存在しないusersテーブルのユーザーを取得します。

SELECT *
FROM users
LEFT JOIN replys
ON users.id = replys.user_id
WHERE replys.user_id IS NULL
;
