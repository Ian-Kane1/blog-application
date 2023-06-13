<?php
require "inc/db_connect.inc.php";

$sql = 'SELECT post.post_id, post.title, post.date, post.content, author.author.id, author.first_name, author.last_name
FROM post
JOIN author
ON post.author_id = author.author_id
WHERE post.post_id =  :id';

// PDO prepared statements
$stmt = $db->prepare($sql);
$stmt->execute(['id' => $_GET['id']]);

// fetch all of the row(s)
$data = $stmt->fetchAll();

echo json_encode(["results" => $data]);
