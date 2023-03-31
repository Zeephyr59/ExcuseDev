## Info générales

    L'application "Excuses de Dev", est un générateur de phrase pour faire patienter les utilisateurs.


## Technologie Requise

    - Symfony
    - Composer


## Installation

    1 - Ouvrir le dossier 'Excuse' dans un terminal de commandes et lancé la commande 'composer install'

    2 - Configuré avec vos paramétres le fichier '.env' pour mettre à jour les informations sur la base de données ligne 25/30
	exemple : DATABASE_URL="mysql://root:@127.0.0.1:3306/symfony_excuses"


    3 - Créer la base de données 'symfony_excuses' est importer la fichier sql fourni dans 'publics/assets'

    4 - Lancer l'API avec la commande 'symfony server:start
    Par défaut l'API se lancera sur le port 8000


## Utilisation

    - Backend (Nécessite d'être connecté | Par défaut -> User : zeephyr@test.fr - password : Zeephyr)

    0. "/security/login"            (Permet de se connecter)
    1. "/security/logout"           (Permet de se déconnecter)
    3. "/security/register"         (Permet permettant de s'inscrire | bloquer si non connecter pour éviter que n'importe qui puisse modifier les données)
    4. "/admin/excuses"             (Liste les excuses)
    5. "/admin/createExcuse"        (Permet l’ajout d'une excuse à la liste des excuses)
    6. "/admin/updateExcuse/{id}"   (Permet de modifier une excuse)

    - Frontend

    1. "/"          => Page principale "Les excuses de dev".
    2. "/lost"      => Page affichant "i’m lost" avec un gif au centre de la page, après 5 secondes
    3. "/*"         => Page erreur 404
    4. "/{httpcode} => Page affichant l'excuse correspondant au code http


