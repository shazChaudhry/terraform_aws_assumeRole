#!/bin/bash

aws_credentials=$(aws sts assume-role \
--role-arn arn:aws:iam::<AWS_ACCOUNT_2_ID>:role/<ROLE_NAME> \
--role-session-name <USER_NAME> \
--profile dev)
export AWS_ACCESS_KEY_ID=$(echo $aws_credentials|jq '.Credentials.AccessKeyId'|tr -d '"')
export AWS_SECRET_ACCESS_KEY=$(echo $aws_credentials|jq '.Credentials.SecretAccessKey'|tr -d '"')
export AWS_SESSION_TOKEN=$(echo $aws_credentials|jq '.Credentials.SessionToken'|tr -d '"')