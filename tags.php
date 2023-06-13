<?php
$pageTitle = "Tags";
require "inc/header.inc.php";

// SQL to get all blog categories. Note the use of a JOIN
$sql = "SELECT * FROM tag ORDER BY tag ASC";

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
            <?php echo display_page_title('Blog Tags') ?>
        </div>
        <div class="col-12 col-md-6 my-3 my-md-0">
            <!-- button to return to previous page -->
            <?php echo display_return_to_previous_page_button('blog', 'Click to return to the blog home page') ?>
        </div>
    </div>
    <div class="row mt-5 gap-5">
        <div class="col-12 col-md-auto text-center mb-5 border border-3 p-4 border-secondary rounded-4 shadow bg-light cat-tag-card">
            <h2>All Tags</h2>
            <hr>
            <?php echo "<ul>";
            foreach ($data as $row) {
                echo "<li><div class='col'><a href='tag.php?tag={$row->tag}' class='btn btn-lg tag-button' title='Link to all posts within this tag'># " . $row->tag . "</a></div></li>";
            }
            echo "</ul>"; ?>
        </div>
        <div class="col-12 col-md-auto text-center mb-5 border border-3 border-secondary p-4 rounded-4 shadow bg-light cat-tag-card">
            <h2>Most Used</h2>
            <hr>
            <?php
            // Now get the most used categories with SQL JOIN
            $sql = "SELECT post_tag.post_id, post_tag.tag_id, tag.tag, 
                COUNT(*) AS magnitude  
                FROM post_tag 
                JOIN tag
                ON post_tag.tag_id = tag.id 
                GROUP BY tag.tag 
                ORDER BY magnitude 
                DESC LIMIT 5";

            // PDO Prepared statements
            $most_used_tags = $db->prepare($sql);
            $most_used_tags->execute();
            $data = $most_used_tags->fetchAll();

            // Generate blog post tag buttons
            echo "<ul>";
            foreach ($data as $row) {
                echo "<li><div class='col'><a href='tag.php?tag={$row->tag}' class='btn btn-lg tag-button' title='Link to all posts within this tag'># " . $row->tag . "</a></div></li>";
            }
            echo "</ul>";
            ?>
        </div>
        <div class="col-12 col-md-auto text-center mb-5 border border-3 border-secondary p-4 rounded-4 shadow bg-light cat-tag-card">
            <h2>Most Recent</h2>
            <hr>
            <?php
            // Now get the most used categories with SQL JOIN
            $sql = "SELECT post_tag.post_tag_id, post_tag.post_id, post_tag.tag_id, tag.tag 
                FROM post_tag 
                JOIN tag
                ON post_tag.tag_id = tag.id 
                ORDER BY post_tag.post_tag_id 
                DESC LIMIT 5";

            // PDO Prepared statements
            $most_used_tags = $db->prepare($sql);
            $most_used_tags->execute();
            $data = $most_used_tags->fetchAll();

            // Generate blog post tag buttons
            echo "<ul>";
            foreach ($data as $row) {
                echo "<li><div class='col'><a href='tag.php?tag={$row->tag}' class='btn btn-lg tag-button' title='Link to all posts within this tag'># " . $row->tag . "</a></div></li>";
            }
            echo "</ul>";

            ?>
        </div>
    </div>
    <?php
    require "inc/footer.inc.php";
    ?>