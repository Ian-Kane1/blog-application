<?php
require "inc/header.inc.php";

if (!isset($_GET['tag'])) {
    header("Location: blog.php");
} else {
    $tag = $_GET['tag'];
}
?>

<div class="container mt-5">
    <div class="row align-items-center border-bottom border-3 border-secondary pb-3">
        <div class="col-12 col-md-6">
            <!-- page title -->
            <?php echo display_page_title('All posts for the <br><em>' . $tag . '</em> tag') ?>
        </div>
        <div class="col-12 col-md-6 my-3 my-md-0">
            <!-- button to return to previous page -->
            <?php echo display_return_to_previous_page_button('tags', 'Click to return to all tags') ?>
        </div>
    </div>
    <div class="row mt-5">
        <?php
        // SQL to get all blog posts. Note the use of a JOIN
        $sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name, post_tag.post_id, tag.id, tag.tag
                    FROM post 
                    JOIN author 
                    ON post.author = author.author_id 
                    JOIN post_tag
                    ON post.post_id = post_tag.post_id 
                    JOIN tag
                    ON post_tag.tag_id = tag.id
                    WHERE tag.tag = :tag";

        // PDO Prepared Statements
        $stmt = $db->prepare($sql);
        $stmt->execute(["tag" => $tag]);

        // Fetch all of the row(s)
        $data = $stmt->fetchAll();

        // Display the blog posts
        require "inc/display_blog_posts.inc.php";
        ?>
    </div> <!-- Closing for .row -->
    <?php
    require "inc/footer.inc.php";
    ?>