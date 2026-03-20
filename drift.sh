#!/bin/bash

terraform plan -detailed-exitcode

if [ $? -eq 2 ]; then
  echo "Drift detected!"
  exit 1
else
  echo "No drift"
fi
