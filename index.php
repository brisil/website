<?php
require_once "admin/database.php";

?>
<!DOCTYPE html>
<html>

<head>
    <title>ZoO albums</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href='http://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body class="container">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#" class="navbar-brand">Full MuZiC</a>
            </div>
            <ul class="nav  navbar-nav navbar-right">
                <?php
                $db = Database::connect();
                $statement = $db->query('Select * from genres');
                $genres = $statement->fetchAll();
                foreach ($genres as $genre) {
                    if ($genre['id'] == '5') {
                        echo ' <li role="presenatation "  class="active">
                        <a   href="#' . $genre['name'] . '" data-toggle="tab">' . $genre['name'] . '</a> </li>';
                    } else {
                        echo ' <li role="presenatation " class="">
                        <a   href="#' . $genre['name'] . '" data-toggle="tab">' . $genre['name'] . '</a> </li>';
                    }
                }



                ?>


            </ul>
        </div>
    </nav>

    <?php


    echo '<div class="tab-content">';





    foreach ($genres as $genre) {
        if ($genre['id'] == '5') {
            echo ' <div class="tab-pane active" id="' . $genre['name'] . '">';
        } else {
            echo ' <div class="tab-pane " id="' . $genre['name'] . '">';
        }
        echo '<div class="row">';
        $statement = $db->prepare('Select * from albums Where albums.genre= ?');
        $statement->execute(array($genre['id']));

        while ($albums = $statement->fetch()) {
            echo '  <div class="col-xs-12 col-md-6">
                            <div class="thumbnail">
                             <img src="images/' . $albums['image'] . '" alt="..." >
                              <div class="prize">' . number_format($albums['price'], 2, '.', '') . '</div>
                              <div class="caption">
                                <h4>' . $albums['name'] . '</h4>
                                 <p>' . $albums['artist'] . '</p>
                                    <a href="#'.$albums['id'].'"  class="btn btn-order " data-toggle="modal">
                                    Voir le détail
                                    </a>
                                </div>
                            </div>
                        </div>';
                       
        }
        echo    '</div>
                   </div>';
    }
    
    echo '</div>';

    require_once "view.php";
    Database::disconnect();

    ?>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>