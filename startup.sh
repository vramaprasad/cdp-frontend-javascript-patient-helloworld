#!/bin/bash

# IFS=
# nc -vzw 10 pos-test-accsta.mayo.edu 443
# nc -vzw 10 test.apimc.mayo.edu 443
# nc -vzw 10 www.google.com 443
# nc -vzw 10 mayo.edu 443
# nc -vzw 10 icbg-np.et0958.epichosted.com 443
# nc -vzw 10 test.internal.mcc.api.mayo.edu 443

# tcptraceroute us-east1-d-dotnet-poc-a7ubrkgpxa-ue.a.run.app 443
# tcptraceroute us-central1-d-dotnet-poc-a7ubrkgpxa-uc.a.run.app 443
# tcptraceroute 34.120.72.112 443
# tcptraceroute pos-test-accsta.mayo.edu 443
# tcptraceroute test.apimc.mayo.edu 443
# tcptraceroute -w 1 -m 20 icbg-np.et0958.epichosted.com 443
# echo "Testing APIGEE Endpoint"
# tcptraceroute test.internal.mcc.api.mayo.edu 443
# echo "End Test"

# echo "Testing Content Endpoint 1"
# curl -vs https://content.mcmapp.mayoclinic.org

# echo "Testing Content Endpoint 2"
# curl -vs https://content.mcmapp.mayoclinic.org -k

# echo "Testing AMS Endpoint 1"
# curl -vs https://dev-ams-origin.mayo.edu/content/dam/mayoclinic-patient/en/content-fragment/navigation/web.cfportal.json

# echo "Testing AMS Endpoint 2"
# curl -vs https://dev-ams-origin.mayo.edu/content/dam/mayoclinic-patient/en/content-fragment/navigation/web.cfportal.json -k

# echo "Testing AMS Endpoint 3"
# curl -vs https://dev-ams-origin.mayo.edu/content/experience-fragments/mayoclinic/language-masters/en/site/footer/navigation-content.model.json -k

# MYIP=$(curl https://api.ipify.org -k)
# echo "My IP is $MYIP"

# curl https://test.apimc.mayo.edu/epicpatientaccess/v2009\?wsdl

# echo $REGION
# SERVER_CA=$(/opt/google-cloud-sdk/bin/gcloud redis instances describe cdp-redis --region $REGION --format=json --project=ml-fpt-cdh-pat-app-d-d87d | jq -r '.serverCaCerts | .[0].cert')
# echo $SERVER_CA
# echo $SERVER_CA >> /etc/ssl/certs/ca-certificates.crt

# touch /tmp/server_ca.pem
# echo $SERVER_CA > /tmp/server_ca.pem
# cp /tmp/server_ca.pem /usr/local/share/ca-certificates/server_ca.crt
# update-ca-certificates

# cat /tmp/server_ca.pem

# tail -n 50 /etc/ssl/certs/ca-certificates.crt

# redis-cli -h 10.185.248.3 -p 6378 --tls ping

# curl -v -k https://34.149.15.68 -H "cookie: Cookie-Monster"

npm start
