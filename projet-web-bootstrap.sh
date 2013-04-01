#!/bin/bash


	######################
	#					 #
	# Twitter Bootstrap  #
	#					 #
	######################
	bootstrapCss="http://twitter.github.com/bootstrap/assets/css/bootstrap.css"
	bootstrapCssResponsive="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css"
	glyphiconsHalflingsWhite="http://twitter.github.com/bootstrap/assets/img/glyphicons-halflings-white.png"
	glyphiconsHalflings="http://twitter.github.com/bootstrap/assets/img/glyphicons-halflings.png"
	bootstrapJs="http://twitter.github.com/bootstrap/assets/js/bootstrap.min.js"

	############################
	#					 	   #
	# Backbone JS - underscore #
	#					 	   #
	############################

	backbone="http://backbonejs.org/backbone-min.js"
	underscore="http://underscorejs.org/underscore-min.js"

	############################
	#					 	   #
	#         Jquery    	   #
	#					 	   #
	############################

	jquery="http://code.jquery.com/jquery-latest.min.js"



################################################################################
################################################################################
################################################################################


#####################################
# Création des repertoires :
#####################################


echo "Quel est le nom du projet ?"
read projectName

mkdir $projectName
cd $projectName


mkdir assets
cd assets # /assets
mkdir js
mkdir css
mkdir img
cd js     # /assets/js
mkdir libs
cd libs # /assets/js/libs
wget $jquery
wget $bootstrapJs


############
echo "Ajouter backbonejs et underscore ? (o/n)"
read response
case $response in 
	'o')
		wget $backbone
		wget $underscore
		cd ..
		touch app.js
	;;
	*)
	cd ..
	echo "Backbone et underscore n'ont pas été ajouté"
	;;
esac
#############

# Je suis dans /assets/js
cd .. #/assets
cd css #/assets/css
wget $bootstrapCss
wget $bootstrapCssResponsive
touch main.css


cd ../img/
wget $glyphiconsHalflings
wget $glyphiconsHalflingsWhite

cd ../..  # retour dans /


################################################################################
################################################################################
################################################################################

#############################
#
#  Creation du fichier index
#
#############################
if [ $response == 'o' ]
	then
	echo "
<!DOCTYPE html>
<html>
	<head>
		<meta charset='utf-8' />
		<title>$projectName</title>
		<link rel='stylesheet' href='assets/css/bootstrap.css' />
	</head>
	<body>

	</body>
	<script src='assets/js/libs/jquery-latest.min.js'></script>
	<script src='assets/js/libs/underscore-min.js'></script>
	<script src='assets/js/libs/backbone-min.js'></script>
	<script src='assets/js/libs/bootstrap.min.js'></script>
</html>
	" >> index.html
else
	echo "
<!DOCTYPE html>
<html>
	<head>
	<meta charset='utf-8' />
	<title>$projectName</title>
		<link rel='stylesheet' href='assets/css/bootstrap.css' />
	</head>
	<body>

	</body>
	<script src='assets/js/libs/jquery.min.js'></script>
	<script src='assets/js/libs/bootstrap.min.js'></script>
</html>
	" >> index.html
fi


echo "
###################################
##
##
## Le projet a été créé !
##
##
##
###################################
"