<?php
$pageTitle = "Categories";
require "inc/header.inc.php";

// SQL to get all blog categories. Note the use of a JOIN
$sql = "SELECT * FROM category ORDER BY category ASC";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute();

// Fetch all of the row(s)
$data = $stmt->fetchAll();
?>

<div class="container mt-5">
    <div class="row align-items-center border-bottom border-3 border-secondary pb-3">
        <div class="col-12 col-md-6">
            <!-- page title -->
            <?php echo display_page_title('Blog Categories') ?>
        </div>
        <div class="col-12 col-md-6 my-3 my-md-0">
            <!-- button to return to previous page -->
            <?php echo display_return_to_previous_page_button('blog', 'Click to return to the blog home page') ?>
        </div>
    </div>
    <div class="row mt-5 gap-5">
        <div class="col-12 col-md-auto text-center mb-5 border border-3 border-secondary p-4 rounded-4 shadow bg-light cat-tag-card">
            <h2>All Categories</h2>
            <hr>
            <?php echo "<ul>";
            foreach ($data as $row) {
                echo "<li><div class='col'><a href='category.php?category={$row->category}' class='btn btn-lg category-button' title='Link to all posts within this category'>" . $row->category . "</a></div></li>";
            }
            echo "</ul>"; ?>
        </div>
        <div class="col-12 col-md-auto text-center mb-5 border border-3 border-secondary p-4 rounded-4 shadow bg-light cat-tag-card">
            <h2>Most Used</h2>
            <hr>
            <?php
            // Now get the most used categories with SQL JOIN
            $sql = "SELECT post_category.post_id, post_category.category_id, category.category, 
                COUNT(*) AS magnitude  
                FROM post_category 
                JOIN category 
                ON post_category.category_id = category.category_id 
                GROUP BY category.category 
                ORDER BY magnitude 
                DESC LIMIT 5";

            // PDO Prepared statements
            $most_used_categories = $db->prepare($sql);
            $most_used_categories->execute();
            $data = $most_used_categories->fetchAll();

            // Generate blog post category buttons
            echo "<ul>";
            foreach ($data as $row) {
                echo "<li><div class='col'><a href='category.php?category={$row->category}' class='btn btn-lg category-button' title='Link to all posts within this category'>" . $row->category . "</a></div></li>";
            }
            echo "</ul>";
            ?>
        </div>
        <div class="col-12 col-md-auto text-center mb-5 border border-3 border-secondary p-4 rounded-4 shadow bg-light cat-tag-card">
            <h2>Most Recent</h2>
            <hr>
            <?php
            // Now get the most used categories with SQL JOIN
            $sql = "SELECT post_category.post_category_id, post_category.post_id, post_category.category_id, category.category 
                FROM post_category 
                JOIN category 
                ON post_category.category_id = category.category_id 
                ORDER BY post_category.post_category_id 
                DESC LIMIT 5";

            // PDO Prepared statements
            $most_used_categories = $db->prepare($sql);
            $most_used_categories->execute();
            $data = $most_used_categories->fetchAll();

            // Generate blog post category buttons
            echo "<ul>";
            foreach ($data as $row) {
                echo "<li><div class='col'><a href='category.php?category={$row->category}' class='btn btn-lg category-button' title='Link to all posts within this category'>" . $row->category . "</a></div></li>";
            }
            echo "</ul>";

            ?>
        </div>
    </div>
    <?php
    require "inc/footer.inc.php";
    ?>