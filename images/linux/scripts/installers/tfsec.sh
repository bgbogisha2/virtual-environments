#!/bin/bash -e
################################################################################
##  File:  tfsec.sh
##  Desc:  Installs Tfsec tool
################################################################################

brew install tfsec

invoke_tests "Tools" "Tfsec"