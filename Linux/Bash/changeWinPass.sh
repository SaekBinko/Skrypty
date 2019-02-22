#!/bin/bash

# Instalacja chntpw
# FEDORA: 
# sudo dnf install -y chntpw

# UBUNTU:
sudo apt install chntpw -y

sudo sfdisk -l
sudo mkdir /mnt/Microsoft
# wybierz partycję z systemem
sudo mount /dev/sda2 /mnt/Microsoft/
cd /mnt/Microsoft/Windows/System32/config/
sudo chntpw -i SAM
# lub
# sudo chntpw -i sam
# 1
# 1
