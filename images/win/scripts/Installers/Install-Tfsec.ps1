################################################################################
##  File:  Install-Tfsec.ps1
##  Desc:  Install Tfsec tool
################################################################################

Choco-Install -PackageName tfsec

Invoke-PesterTests -TestFile "Tools" -TestName "Tfsec"
