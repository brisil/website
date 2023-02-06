<?php

foreach($genres as $genre){
    $statement = $db->prepare('Select * from albums Where albums.genre= ?');
    $statement->execute(array($genre['id']));

    foreach($statement as $albums){
        try{  
            echo '<div class="modals">
        
            <div class="modal fade " id="'.$albums['id'].'"  role="dialog" >
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel"> '. $albums['name'].'</h4>
                        </div>
                        <div class="modal-body">
                            <div class="thumbnail">
                                <img class="image" src="images/'.$albums['image'].'" alt="">
                                <div class="prize">'.number_format($albums['price'], 2, '.','').'</div>
                                <div class="caption">
                                    <h4><span class="titre"></span> (<span class="annee">'.$albums['year'].'</span>)</h4>
                                    <p><i> Artist :</i> <b class="artist"> '.$albums['artist'].' </p>
                                    <p class="description"></p>
                                    <p><a class="btn btn-order" role="button" href="#">Acheter</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                        </div>
                    </div>
                </div>
            </div>
        </div> ';
        
    
            
        }catch(Exception $e){
            die($e->getMessage());
        }

    }
}

    

    

?>
