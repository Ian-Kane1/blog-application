<?php
require "inc/header.inc.php";

if (!isset($_GET['category'])) {
    header("Location: blog.php");
} else {
    $category = $_GET['category'];
}
?>

<div class="container mt-5">
    <div class="row align-items-center border-bottom border-3 border-secondary pb-3">
        <div class="col-12 col-md-6 align-items-start">
            <!-- page title -->
            <?php echo display_page_title('All posts for the <br><em>' . $category . '</em> category') ?>
        </div>
        <div class="col-12 col-md-6 my-3 my-md-0">
            <!-- button to return to previous page -->
            <?php echo display_return_to_previous_page_button('categories', 'Click to return to all categories') ?>
        </div>
    </div>
    <div class="row mt-5">
        <?php
        // SQL to get all blog posts. Note the use of a JOIN
        $sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name, post_category.post_id, category.category_id, category.category
                    FROM post 
                    JOIN author 
                    ON post.author = author.author_id 
                    JOIN post_category
                    ON post.post_id = post_category.post_id 
                    JOIN category
                    ON post_category.category_id = category.category_id
                    WHERE category.category = :category";

        // PDO Prepared Statements
        $stmt = $db->prepare($sql);
        $stmt->execute(["category" => $category]);

        // Fetch all of the row(s)
        $data = $stmt->fetchAll();

        // Display the blog posts
        require "inc/display_blog_posts.inc.php";
        ?>
    </div> <!-- Closing for .row -->
    <?php
    require "inc/footer.inc.php";
    ?>