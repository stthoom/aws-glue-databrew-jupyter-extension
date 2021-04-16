#!/usr/bin/env bash
set -x

if [ -d "aws-glue-databrew-jupyter-extension" ]; then
  echo "Starting Jupyter lab"
else
  echo "must be inside aws-glue-databrew-jupyter-extension root folder"
fi

jupyter lab --notebook-dir=.workspace