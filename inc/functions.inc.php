<?php
// https://stackoverflow.com/questions/965235/how-can-i-truncate-a-string-to-the-first-20-words-in-php
// input text and limit
// output truncated text
function limit_text($text, $limit)
{
    if (str_word_count($text, 0) > $limit) { // number of words in string greater than limit
        $words = str_word_count($text, 2); // create array of words in string
        $pos   = array_keys($words); // create array of word positions in string
        $text  = substr($text, 0, $pos[$limit]) . '...'; // create substring at position of limit
    }
    return $text;
}

// input array and type
// output formatted html
function format_array_contents($arr, $type)
{
    $items = [];
    foreach ($arr as $row) {
        if ($type == "category") {
            $row_category = $row->category;
            array_push($items, "<a href='category.php?category=" . $row_category . "'" . " title='Link to all posts within this category' Class='btn category-button'>" . $row_category . "</a>");
        } else if ($type == "tag") {
            $row_tag = $row->tag;
            array_push($items, "<a href='tag.php?tag=" . $row_tag . "'" . " title='Link to all posts within this tag' class='btn tag-button'># " . $row_tag . "</a>");
        }
    }
    echo '<p>' . implode(" ", $items) . '</p>';
}

// input error bucket array
// output formatted html
function display_error_bucket($error_bucket)
{
    echo '<div class="pt-4 alert alert-warning my-5" role="alert">';
    echo '<p>The following errors were detected:</p>';
    echo '<ul>';
    foreach ($error_bucket as $text) {
        echo '<li class="text-secondary-emphasis">' . $text . '</li>';
    }
    echo '</ul>';
    echo '<p class="text-primary-emphasis"><strong>All of these fields are required. Please fill them in.</strong></p>';
    echo '</div>';
}

// input text
// output formatted html
function display_page_title($text)
{
    echo '<h1>' . $text . '</h1>';
}

// input page title and text
// output formatted html
function display_return_to_previous_page_button($page, $text)
{
    echo '<a href="' . $page . '.php" title="Link to return to the ' . $page . ' page" class="btn btn-dark d-inline">' . $text . '</a>';
}
