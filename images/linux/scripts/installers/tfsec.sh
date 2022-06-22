#!/bin/bash -e
################################################################################
##  File:  tfsec.sh
##  Desc:  Installs Tfsec tool
################################################################################

source $HELPER_SCRIPTS/install.sh

# Download tfsec binary
tfsecUrl=$(get_github_package_download_url "aquasecurity/tfsec" "endswith(\"tfsec-linux-amd64\")")
download_with_retries $tfsecUrl "." "tfsec.bin"
# Mark it as executable
chmod +x ./tfsec.bin
# Add tfsec to PATH (requires admin)
sudo mv ./tfsec.bin /usr/local/bin/tfsec

invoke_tests "Tools" "Tfsec"
