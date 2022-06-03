#!/bin/bash

# https://stackoverflow.com/a/20574486/3041568

noCommitCount=$(git diff --no-ext-diff --cached | egrep -i --count "(@No|\/\/\s?no[ -]?)commit")
if [ "$noCommitCount" -ne "0" ]; then
   echo "WARNING: You are attempting to commit changes which include a 'no-commit'."
   echo "Please check the following files:"
   git diff --no-ext-diff --cached --name-only -i -G"(@no|)#no-commit#" | sed 's/^/   - /'
   echo
   echo "You can ignore this warning by running the commit command with '--no-verify'"
   exit 1
fi