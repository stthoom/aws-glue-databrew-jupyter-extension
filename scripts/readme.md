# Helper scripts to run JupyterLab with DataBrew extenison 

From project root directory execute below scripts.

### Python environment 
./scripts/build_venv.sh

source .venv/bin/activate

### Install 
./scripts/install_ext.sh

### AWS Account config

`Set AWS_PROFILE and AWS_DEFAULT_REGION values`

`DataBrew plugin based UI needs IAM role to interact with AWS account resources. 
 Add below policy document to the trust relationship.`

`
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "sagemaker.amazonaws.com",
          "ec2.amazonaws.com",
          "databrew.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
`

### Start JupyterLab 
./scripts/start_jupyter.sh


# Steps to build the extension from source.
TODO