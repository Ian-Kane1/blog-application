<?php

// Blog post title field logic
if (empty($_POST["title"])) {
    array_push($error_bucket, "<p>A blogpost title is required.</p>");
} else {
    $title = $_POST["title"];
}

// Blog post date field logic
if (empty($_POST["date"])) {
    array_push($error_bucket, "<p>A blogpost date is required.</p>");
} else {
    $date = $_POST["date"];
}

// Blog post content field logic
if (empty($_POST["content"])) {
    array_push($error_bucket, "<p>Blogpost content is required.</p>");
} else {
    $content = $_POST["content"];
}

// Blog post author field logic
if (empty($_POST["author"])) {
    array_push($error_bucket, "<p>A blogpost author is required.</p>");
} else {
    $author = $_POST["author"];
}

// Blog post categories field logic
if (empty($_POST["categories"])) {
    array_push($error_bucket, "<p>At least one blogpost category is required.</p>");
} else {
    $categories = $_POST["categories"];
}

// Blog post tags field logic
if (empty($_POST["tags"])) {
    array_push($error_bucket, "<p>At least one blogpost tag is required.</p>");
} else {
    $tags = $_POST["tags"];
}
