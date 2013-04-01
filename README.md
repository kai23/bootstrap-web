bootstrap-web
======

Tout ça pour dire que ça va nous créer une petite arborescence bien sympa.

    -------------------------------------------------------------------
    
    index.html
    assets/
       |--- js/
             |--- libs/
                    |--- backbone-min.js (si backbone)
                    |--- underscore-min.js (si backbone)                    
                    |--- bootstrap.min.js
                    |--- jquery-latest.min.js
             |--- app.js (si underscore)
       |--- css/
              |--- bootstrap-responsive.css
              |--- bootstrap.css
              |--- main.css
       |--- img/
              |--- glyphicons-halflings-white.png
              |--- glyphicons-halflings.png
      
      -------------------------------------------------------------------
              
Du coup, plus besoin de se prendre la tête pour savoir si on a bien la dernière version ou pas de telle ou telle libs. C'est le cas quoi qu'il arrive ! :)

Le script demande le nom du projet, ainsi que si l'on souhaite ou pas intégrer Backbonejs ou pas

Le fichier index.html ressemble à ça : 

    `````html
    <!DOCTYPE html>
    <html>
        <head>
    		<meta charset='utf-8' />
    		<title>backboneTest</title>
    		<link rel='stylesheet' href='assets/css/bootstrap.css' />
    	</head>
    	<body>
    
    	</body>
    	<script src='assets/js/libs/jquery-latest.min.js'></script>
    	<script src='assets/js/libs/underscore-min.js'></script>
    	<script src='assets/js/libs/backbone-min.js'></script>
    	<script src='assets/js/libs/bootstrap.min.js'></script>
    </html>
	`````
