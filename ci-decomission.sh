#!/bin/bash
echo "Demolishing your awesome stacks..."
cd go
serverless remove

cd ..
cd nodejs10
serverless remove