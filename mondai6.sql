--問題 6
--問題: もっともリプライが多いツイートのIDとリプライ数を取得してください。
--説明: replysテーブルを使って、各ツイートに対するリプライの数をカウントし、一番多いリプライ数を
--持つツイートIDを取得します。

SELECT MAX(cnt)
FROM
(SELECT user_id,COUNT(*) cnt FROM replys GROUP BY user_id)num
;