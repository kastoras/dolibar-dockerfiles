# dolibar-dockerfiles
This repo contain some dockerfiles needed in order to build dolibarr docker images.
There are two set of that can be created from those docker files. (`freshinstall` & `withenv`)

More to come...

# Instructions

Those files can be copied to a dolibarr instance and create containers using the instructions bellow.
Alternative the files can be used in CI Piplenes to create dolibarr images

## Copy files 
1. Copy the dockerfiles folder in the root of the dollibar instance
1. Copy and rename(to `docker-compose.yaml`) one of the two docker compose files to the root of the dollibar instance. Select one of the two versions supported (17, 19). The docker files could probably work in other versions as well, but they haven`t tested.
1. Run `docker compose up -d server` 
1. Open `http://localhost:8001`


