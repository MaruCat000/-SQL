--問題 10
--問題: すべてのツイートの内容と、それを投稿したユーザーの名前を取得してください。ただし、リプラ
--イもツイートとして扱い、それがどのツイートに対するリプライかも表示してください。

--説明: tweetsテーブル、replysテーブル、usersテーブルを結合し、ツイートとリプライを含むすべての
--投稿とそれに関連するユーザー情報を取得します。


--SELECT tweet,reply,first_name,last_name
--FROM tweets
--WHERE tweets.tweet_id = replys.tweet_id


--sql 条件 複数テーブル 結合　検索
--左外部結合（LEFT OUTER JOIN）
--　　　　左側のテーブルにしかないデータも取得する方法
--tweetsテーブルにしかないデータ(replyなし)も取得する
--さらにusersテーブルから名前を取得する
--↓
--統合結合（UNION/UNION ALL）
--統合結合は、２つ以上のSELECTの結果を統合して取得

--例
--select emp_code from tbl_employees
--UNION
--select emp_code from bkup_employees;


--SELECT tweet,reply,first_name,last_name
--FROM tweets
--WHERE tweets.tweet_id = replys.tweet_id
--UNION
--SELECT 
--同一の結果が重複しているかを見ていく書き方になるので違う



--考え直し
-- ツイート一覧と、それに対するリプライ、投稿者名をすべて取得する
--まず、どの項目をSELECTするのか
SELECT 
    t.tweet AS 'ツイート内容',
    r.reply AS 'リプライ内容',
    u.first_name AS '名',
    u.last_name AS '姓'
--tweersテーブルのすべてから
FROM tweets t
-- ツイートを投稿したユーザーを結合
--tweetsテーブルのuser_idとuserテーブルを結合して見ていく
INNER JOIN users u ON t.user_id = u.id
-- そのツイートに対するリプライがあれば結合（リプライがないツイートも表示するためLEFT JOIN）
LEFT JOIN replys r ON t.id = r.tweet_id;