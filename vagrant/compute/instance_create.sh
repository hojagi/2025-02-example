#!/bin/bash
# $1 - instance name
# $2 - ssh-key path

source ./func.sh
help="Usage: ./instance_create.sh <vm_name> <path/to/user_data_file>"

if [ $# -eq 2 ]; then
  echo "${bld}Creating machine...${rst}"
  yc compute instance create \
    --name $1 \
    --zone ru-central1-a \
    --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
    --platform standard-v3 \
    --cores 2 \
    --core-fraction 100 \
    --memory 8 \
    --preemptible \
    --create-boot-disk image-id=fd8nru7hnggqhs9mkqps,size=20 \
    --hostname $1 \
    --metadata-from-file user-data=$2 || exit 1
  echo "${grn}Machine was created.${rst}"
else
  echo $help; exit 1
fi
