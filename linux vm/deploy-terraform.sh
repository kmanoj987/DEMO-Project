#!/bin/bash

#Initialize Terraform

terraform init

# Plan the infrastructure changes

terraform plan -out=tfplan \
      -var="resource_group_name=$1" \
      -var="location=$2" \
      -var="vnet_name=$3" \
      -var="address_prefix=$4" \
      -var="resource_group=$5"


# Apply the changes

terraform apply -auto-approve tfplan