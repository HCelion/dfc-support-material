#!/usr/bin/env bash
gcloud compute instances create rstudio --image-family ubuntu-1604-lts --image-project ubuntu-os-cloud  --machine-type n1-standard-4 --zone europe-west1-d --tags=http-server --metadata-from-file startup-script=Rserver_startup.sh
gcloud compute firewall-rules create allow-rstudio --allow=tcp:8787


# gcloud compute instances add-metadata rstudio --metadata-from-file startup-script=test_startup.sh
# Run startup script from instance
# sudo google_metadata_script_runner --script-type startup
