#! /bin/bash
sh -c 'echo "deb https://cloud.r-project.org/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list'
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
apt update
apt install -y r-base r-base-dev
add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
apt update && apt upgrade
apt install -y libgeos-dev libproj-dev libgdal-dev libudunits2-dev
apt install -y gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.0.143-amd64.deb
yes  | gdebi rstudio-server-1.0.143-amd64.deb
echo "GCS_AUTH_FILE=/usr/local/key.json" >> /usr/lib/R/etc/Renviron
