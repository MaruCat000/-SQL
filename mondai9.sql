--問題 9
--問題: もっとも多くリプライを投稿したユーザーの名前と姓を取得してください。
--説明: replysテーブルを使って、リプライをもっとも多く投稿したユーザーを特定し、そのユーザーの名
--前と姓を取得します。

--例
--SELECT class, MAX(dt) FROM sample_table GROUP BY class;

--SELECT first_name,last_name, MAX(reply) FROM replys
--GROUP BY user_id;


--sql max 条件 複数テーブル 検索例
--SELECT 
--    departments.department_name, 
--    employees.name, 
--    MAX(employees.salary) AS max_salary
--FROM 
--    employees
--INNER JOIN 
--    departments 
--ON 
--    employees.department_id = departments.id
--GROUP BY 
--    departments.department_name, 
--    employees.name;

--例を元に組み立てたSQL文
--SELECT first_name,last_name,MAX(replys.reply)
--FROM replys
--INNER JOIN users
--ON replys.user_id = users.id
--GROUP BY replys.user_id
--;
--結果としてまちがっている
--MAX(replys.reply) を使っているが、これは「リプライの内容（文字列）」の最大値を取得してしまっている

--組みなおしたSQL文
SELECT 
    u.first_name, 
    u.last_name
FROM users u
INNER JOIN replys r ON u.id = r.user_id
GROUP BY u.id
ORDER BY COUNT(r.id) DESC
LIMIT 1;