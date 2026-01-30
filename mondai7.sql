--問題 7
--問題: 全てのツイートと、それに対するリプライがあればその内容も取得してください。
--説明: tweetsテーブルとreplysテーブルを結合して、各ツイートとそのリプライを取得します。リプライ
--がない場合はツイートだけ表示されます。

SELECT tweets.tweet,replys.reply
FROM tweets
LEFT JOIN replys
ON tweets.id = replys.tweet_id
;