#!/bin/bash

# Check if AWS CLI is configured
if ! aws sts get-caller-identity > /dev/null 2>&1; then
    echo "AWS CLI is not configured. Please configure it using 'aws configure' before running this script."
    exit 1
fi

file_name=$1
bucket_name=$2

# Check if file exists
if [ -f "$file_name" ]; then
    echo "$file_name found, proceeding with upload"
else
    echo "Error: file does not exist."
    exit 2
fi

# Perform the upload
upload_output=$(aws s3 cp "$file_name" s3://"$bucket_name"/ 2>&1)
upload_status=$?

if [ $upload_status -eq 0 ]; then
    echo "Upload successful!"
else
    echo "Upload failed: $upload_output."
    exit 3
fi
