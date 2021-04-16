#!/usr/bin/env bash
set -x

if [ -d "aws-glue-databrew-jupyter-extension" ]; then
  echo "Building venv for jupyter user"
else
  echo "must be inside aws-glue-databrew-jupyter-extension root folder"
fi

jupyter labextension install aws_glue_databrew_jupyter

