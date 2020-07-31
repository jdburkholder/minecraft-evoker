#!/bin/bash -x
DIRECTORY="$( dirname $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"
BUCKET=forestpostminecraft
aws s3 cp ${DIRECTORY}/scripts/ s3://${BUCKET}/common/scripts --recursive
aws s3 cp ${DIRECTORY}/mods/ s3://${BUCKET}/common/mods --recursive
