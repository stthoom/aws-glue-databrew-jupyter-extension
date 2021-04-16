#!/usr/bin/env bash
set -x

if [ -d "aws-glue-databrew-jupyter-extension" ]; then
  echo "Building venv for jupyter user"
else
  echo "must be inside aws-glue-databrew-jupyter-extension root folder"
fi

if [ -d ".venv" ]; then
  echo "Updating .venv"
else
  echo "creating .venv"
  python3 -m venv .venv
fi

source .venv/bin/activate

pip install -U pip
pip install -r requirements-dev.txt


mkdir -p .workspace
mkdir -p .workspace/blogpost
ln -sf ./blogpost .workspace/blogpost

