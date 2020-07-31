#!/bin/bash -x
DIRECTORY="$( dirname $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"
DIRECTORY="."
DEFAULT_STACK_NAME=forest-minecraft-stack
aws cloudformation update-stack --stack-name ${DEFAULT_STACK_NAME} --template-body file://../cfn/cfn.template.json --parameters file://../parameters.json --capabilities CAPABILITY_IAM
