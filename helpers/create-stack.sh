#!/bin/bash -x
DIRECTORY="$( dirname $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"
DEFAULT_STACK_NAME=forest-minecraft-stack
aws cloudformation create-stack --stack-name ${DEFAULT_STACK_NAME} --template-body file://../cfn/s3.template.json --parameters file://../s3params.json --capabilities CAPABILITY_IAM
