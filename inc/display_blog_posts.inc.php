<?php
// check if database has blogposts to return
if (!$data) {
    echo "<p>There are no blog posts to show.</p>";
} else {
    // Iterate through each of the rows
    foreach ($data as $row) {
        // Create HTML for each blog entry
        echo "<div class='col-12 mb-5 border border-3 border-secondary p-4 rounded-4 shadow bg-light'>";
        // Blog Title
        echo "<h2>{$row->title}</h2>";
        echo "<hr>";
        // Take the date and convert it to a PHP date object
        $date = date_create($row->date);
        // Show blog post author and format the date
        echo "<p class='fw-bold'>{$row->first_name} {$row->last_name} - " . $date->format('M d, Y')  . "</p>";

        // Now get the categories for this post with SQL JOIN
        $sql = "SELECT post_category.post_id, post_category.category_id, category.category 
            FROM post_category 
            JOIN category 
            ON post_category.category_id = category.category_id 
            WHERE post_category.post_id = :post_id";

        // PDO Prepared statements
        $stmt_category = $db->prepare($sql);
        $stmt_category->execute(["post_id" => $row->post_id]);
        $categories = $stmt_category->fetchAll();

        // Generate blog post category buttons
        echo count($categories) == 1 ? '<p>Category</p>' : '<p>Categories</p>';
        echo format_array_contents($categories, "category");

        // Now get the tags for this post with SQL JOIN
        $sql = "SELECT post_tag.post_id, post_tag.tag_id, tag.tag 
            FROM post_tag 
            JOIN tag 
            ON post_tag.tag_id = tag.id 
            WHERE post_tag.post_id = :post_id";

        // PDO Prepared statements
        $stmt_tag = $db->prepare($sql);
        $stmt_tag->execute(["post_id" => $row->post_id]);
        $tags = $stmt_tag->fetchAll();

        // Generate blog post tag buttons
        echo count($tags) == 1 ? '<p>Tag</p>' : '<p>Tags</p>';
        echo format_array_contents($tags, "tag");


        // Show the blog post content
        $content = limit_text($row->content, 50);
        echo "<hr>";
        echo "<p class='text-center'>{$content}</p>";
        echo "<hr>";
        echo "<div><a href='single.php?id={$row->post_id}' title='Link to read the full post' class='btn read-more-button'>Read more ></a></div>";
        echo "</div>"; // closing .col-12
    } // end of loop for Posts
} // end of else
