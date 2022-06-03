#!/bin/bash

noCommitCount=$(grep -ow $1 -e '#no-commit#' | wc -l)
if [ "$noCommitCount" -ne "0" ]; then
   echo "WARNING: You are attempting to commit changes which include a '#no-commit#'."
   echo "Please check the following files:"
   echo $1
   echo
   echo "You can ignore this warning by running the commit command with '--no-verify'"
   exit 1
fi