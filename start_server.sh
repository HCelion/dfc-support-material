#!/usr/bin/env bash
gcloud compute instances create consultant-workstation --image-family ubuntu-1604-lts --image-project ubuntu-os-cloud  --machine-type n1-standard-4 --zone europe-west1-d  --metadata-from-file startup-script=Rserver_startup.sh
gcloud compute firewall-rules create allow-dfc --allow=tcp:8787
