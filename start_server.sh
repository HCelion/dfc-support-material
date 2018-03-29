#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo 'Please specify the zone as in "./start_server.sh europe-west1-d"'
else
    gcloud compute instances create consultant-workstation --image-family ubuntu-1604-lts --image-project ubuntu-os-cloud  --machine-type n1-standard-4 --zone $1  --metadata-from-file startup-script=Rserver_startup.sh
    gcloud compute firewall-rules create allow-dfc --allow=tcp:8787
fi
