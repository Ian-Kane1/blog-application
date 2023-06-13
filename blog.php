<?php
$pageTitle = "Blog Home";
require "inc/header.inc.php";
?>

<div class="container mt-5">
    <div class="row mb-5 align-items-center border-bottom border-3 border-secondary pb-3">
        <div class="col-12">
            <h1>Blog Posts</h1>
        </div>
    </div>
    <div class="row gap-1">
        <?php
        // SQL to get all blog posts. Note the use of a JOIN
        $sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name 
                    FROM post 
                    JOIN author 
                    ON post.author = author.author_id";

        // PDO Prepared Statements
        $stmt = $db->prepare($sql);
        $stmt->execute();

        // Fetch all of the row(s)
        $data = $stmt->fetchAll();

        // Display the blog posts
        require "inc/display_blog_posts.inc.php";
        ?>
    </div> <!-- Closing for .row -->
    <?php
    require "inc/footer.inc.php";
    ?>