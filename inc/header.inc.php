<?php
require "inc/functions.inc.php";
require "inc/db_connect.inc.php";
function echoActiveClassIfRequestMatches($requestUri)
{
  // set current file name
  $current_file_name = basename($_SERVER["REQUEST_URI"], ".php");
  // check if current file name is equal to request URI/current page user is on
  if ($current_file_name == $requestUri)
    // send file status of active
    echo 'active';
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,300;0,400;0,500;0,700;0,1000;1,300&display=swap" rel="stylesheet">
  <!-- Bootstrap via CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  <title><?= $pageTitle ?></title>
</head>

<body>
  <header class="sticky-top">
    <nav class="navbar navbar-expand-lg border py-lg-2 shadow">
      <div class="container-fluid">
        <!-- blog home page link -->
        <a class="navbar-brand ms-1 ms-md-3 text-center logo p-2 rounded-4" href="blog.php" title="Link to the blog home page"><strong>Ian Kane's</strong><br><em><small>Awesome Blog</small></em></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
          <ul class="navbar-nav gap-md-5 me-md-5 align-items-center">
            <li class="nav-item">
              <!-- categories page link -->
              <a class="nav-link <?= echoActiveClassIfRequestMatches("categories") ?>" aria-current="page" href="categories.php" title="Link to the categories page">Categories</a>
            </li>
            <li class="nav-item">
              <!-- tags page link -->
              <a class="nav-link <?= echoActiveClassIfRequestMatches("tags") ?>" aria-current="page" href="tags.php" title="Link to the tags page">Tags</a>
            </li>
            <li class="nav-item">
              <!-- new post page link -->
              <a class="nav-link <?= echoActiveClassIfRequestMatches("post") ?>" aria-current="page" href="post.php" title="Link to the new post page">New Post</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
