<?php		
	try {
		
	    $con = new PDO("mysql:host=localhost;dbname=gestion_etudiant", 
	        "root", "");
		
	}catch (Exception $e){
		die('Erreur : ' . $e->getMessage());
		
	}	
?>