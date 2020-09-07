#!/bin/bash

# create role 
aws iam create-role --role-name lambda-invoke-role \
--assume-role-policy-document file://lambda-invoke-role.json \
--profile default

# create policy
aws iam create-policy --policy-name lambda-invoke-policy \
--policy-document file://lambda-invoke-policy.json \
--profile default

aws iam attach-role-policy --policy-arn arn:aws:iam::906527616204:policy/lambda-invoke-policy \
--role-name lambda-invoke-role \
--profile default

exit 0




