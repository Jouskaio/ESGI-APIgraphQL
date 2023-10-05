# reste à faire :

- resolver User : get queries + mutations + gestion de la session/credentials? (récupération du user login/logout)
- Mutations : update & delete;
- Ajout d'une interface (voir pertinence des tables à relier).
- Ajout d'une union de types style moteur de recherche (voir pertinence des tables à relier).

# Structure mutation post :

- Type :
- définition du type graphql de la mutation, dans le type "Mutation" :
    """
    Creates a new location.
    """
    addLocation(name: String!): Location
    
    - nom de la mutation, input en paramètre avec type de l'input. 
    - précision si paramètre nullable ou non.   

- Data source :
    - méthode asynchrone qui prend en paramètre l'input que tu lui passe et qui doit correspondre au type graphql.
    - 'insertQuery' => la variable qui contient la requête SQL d'insertion : ex :
      - 'INSERT INTO "LOCATION"(location_name) VALUES($1) RETURNING *'
        - 'location_name' correspond à la colonne cible pour l'insertion de la value, 
        - '$1' correspond à la valeur passée en paramètre pour le name, donc tu auras autant de '$x' que de paramètres etc..
        - 'RETURNING *' correspond à une instruction 'SELECT' sur la valeur insérée, qui permet au resolver d'exploiter 
          le retour de la commande d'insertion.
    - 'values' => array qui reprend toutes les valeurs passées en paramètres et objets de la requête d'insertion.
    - 'result' => stockage de l'exécution de la requête d'insertion

