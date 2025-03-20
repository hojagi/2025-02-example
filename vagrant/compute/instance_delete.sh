#!/bin/bash
# $1 - instance name

source ./func.sh
help="Usage: ./instance_delete.sh <vm_name>"

if [ $# -eq 1 ]; then
  echo "${bld}Deleting machine...${rst}"
  yc compute instance delete \
    --name $1 || exit 1
  echo "${grn}Machine was deleted.${rst}"
else
  echo $help; exit 1
fi
