# Running a RStudio Server on GCP


This script creates a gcloud compute instance of type n1-standard-2 in a zone of your choice and installs R, RStudio, livetex and all necessary dependencies to get a basic tidyverse setup running. In the cloud shell, or an authenticated machine, run the following commands.
```{bash}
git clone https://github.com/HCelion/dfc-support-material.git
cd dfc-support-material/
./start_server.sh europe-west1-d
```

This should create the instance of name consultant-workstation and the firewall rule for port 8787.

SSH into the machine and add a user. Afterwards locate the external IP of the machine and access it via the http protocol.
```
http://{Your External IP}:8787
```

You will have a running RStudio server with an authenticated user.
