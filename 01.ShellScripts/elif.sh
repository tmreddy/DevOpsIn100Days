#!/bin/bash
if [ "$1" == "deploy" ]; then
  echo "Deploying application"
elif [ "$1" == "rollback" ]; then
  echo "Rolling back application"
else
  echo "Unknown command"
fi

