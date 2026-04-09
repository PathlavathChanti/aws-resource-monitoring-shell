
#!/bin/bash
###########################
## Author : chanti
##date : 09/04/26
##
#version : V1
#
#this script will report aws resource usage
################################################
set -x
# AWS  S3
# AWS EC2
# AWS LAMBDA
# AWS IAM

#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourcetracker

# list EC2 Instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list Lambda
echo "Print list of lambda buckets"
aws lambda list-functions >> resoucetracker:q!

# list IAM users
echo "print list of IAM buckets"
aws iam list-users
~
