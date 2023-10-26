#!/bin/bash

# Arrêter et supprimer tous les conteneurs
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

# Purger les réseaux, les volumes et les images inutilisées
docker network prune -f
docker volume prune -f
docker image prune -af

