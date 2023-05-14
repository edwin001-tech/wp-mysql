#!/bin/bash

# Define an array with the names of the manifest files
manifests=(db-vc.yaml mysql-svc.yaml mysql.yaml pv.yaml secret.yaml wp-svc.yaml wp-vc.yaml wp.yaml)

# Loop through the array and apply each manifest file
for manifest in "${manifests[@]}"
do
  kubectl apply -f "$manifest"
done

