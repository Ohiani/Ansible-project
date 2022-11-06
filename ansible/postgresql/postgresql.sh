#!/usr/bin/bash
echo "wget certificate"
sudo apt install wget ca-certificates
echo "add repository"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "download repository"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
echo "update server"
sudo apt update
echo "install postgresql"
sudo apt install postgresql postgresql-contrib -y
echo "create database
sudo -u postgres psql -c "CREATE USER ohiani"