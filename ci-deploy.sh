#!/bin/bash

export AWS_PROFILE=default
export AWS_REGION=us-east-1

cd go
serverless deploy --region $AWS_REGION
sleep 5s

cd ..
cd nodejs10
serverless deploy --region $AWS_REGION
sleep 5s