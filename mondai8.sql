--問題 8
--問題: ユーザーごとのツイート数とリプライ数を取得してください。
--説明: 各ユーザーのツイート数とリプライ数を集計して、それぞれを表示します。

--例
--SELECT gender, COUNT(gender) 
--FROM staffs GROUP BY gender;

 --例を元に組み立て
--SELECT id,first_name,last_name COUNT(tweet),COUNT(reply)
--FROM staffs
--GROUP BY id;


--以下が等しい
--reply user_id
--tweets user_id
 
--users id
--first_name,last_name

--例
--SELECT dept_name, count(distinct title) FROM `titles`
--left join dept_emp on titles.emp_no = dept_emp.emp_no
--left join departments on dept_emp.dept_no = departments.dept_no
--group by dept_name
--order by dept_name

--例を元に組み立てたがエラー
--SELECT id,first_name,last_name,COUNT(tweet) FROM tweets,COUNT(reply) FROM replys
--LEFT JOIN replys ON replys.user_id = users.id
--LEFT JOIN tweets ON tweets.user_id = users.id
--GROUP BY id
--ORDER BY id;


--改変してOKになったSQL文
SELECT 
    u.id, 
    u.first_name, 
    u.last_name, 
    COUNT(DISTINCT t.id) AS tweet_count, 
    COUNT(DISTINCT r.id) AS reply_count
FROM users u
LEFT JOIN tweets t ON t.user_id = u.id
LEFT JOIN replys r ON r.user_id = u.id
GROUP BY u.id
ORDER BY u.id ASC
LIMIT 0, 25;--localhostで行数エラーが出たため追記