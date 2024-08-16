# Cloud Uploader CLI
## Overview
This is a bash-based command-line interface (CLI) tool that allows users to quickly upload files to a specific cloud storage, providing a seamless upload experience similar to a popular storage services with a simple set of commands and options for users.

## Prerequisites
Before using the CLI Cloud Upload Tool, ensure you have the following prerequisites installed on your system:

- Bash

- Download and configure the AWS CLI (Amazon Web Service Command Line Interface)

- Cloud storage account (e.g., AWS S3)

- API keys or credentials for the cloud storage service

## Installation
1. Clone the Github Repo.

`
git clone https://github.com/Stefanie-A/CloudDrop.git
`

`
cd cloudDrop
`

2. Make the script executable:

` chmod +x upload.sh
`

3. Configuration:

Make sure AWS CLI is configured using:

`
aws configure
` 

## Usage
To upload a file to the cloud storage, use the following command:

`
./upload.sh path/to/your/file
`

Usage Examples
Upload a single file:

`
./upload.sh /path/to/file.txt
`

Upload multiple files:

`
./upload.sh /path/to/file1.txt /path/to/file2.jpg /path/to/file3.pdf
`
<!-- Specify a custom destination path in the cloud storage:

bash
Copy code
./upload.sh /path/to/file.txt --dest-folder /custom/destination/path -->

## Common Issues and Troubleshooting
### Issue: "Command not found" error
### Solution:
Ensure you have made the script executable: chmod +x upload.sh.
Make sure you are in the correct directory where upload.sh is located.

### Issue: "Permission denied" error
### Solution:
Ensure you have the necessary permissions to execute the script: chmod +x upload.sh.
Run the script with elevated privileges if required: sudo ./upload.sh.

### Issue: "Invalid credentials" or "Access denied"
### Solution:
Verify that your cloud storage credentials are correctly set in the .env file.
Ensure the .env file is properly loaded: source .env.

### Issue: "File not found" or "No such file or directory"
### Solution:
Check the file path you provided to ensure it is correct and the file exists.
Use absolute paths if relative paths cause issues.

### Issue: "Upload failed" with an error message
### Solution:
Check the error message for specific details about why the upload failed.
Verify your cloud storage configuration and ensure the bucket or container exists.
Ensure your network connection is stable.
