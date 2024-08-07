#!/bin/bash
##########################################
# Daily Tracker for AWS Resources
# Author: Stalin
# Version: v1
# Contact: stalinraja.aws@gmail.com
#

set -x

# AWS EC2
# AWS S3
# AWS IAM Users
# AWS Lambda
#


# List EC2 Instances
echo "print the EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List S3 Bucket
echo "Print the list of S3 bucket"
aws s3 ls

# List IAM Users
echo "print the list of IAM Users"
aws iam list-users | jq '.Users[].UserName'


# List the Lambda functions
echo "print all the lambda functions"
aws lambda list-functions


