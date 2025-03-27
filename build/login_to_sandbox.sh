echo "Logging into Sandbox Salesforce Org"
mkdir keys
echo $SANDBOX_CERT_KEY | RS256 -di > keys/server.key

echo "Authenticating org"
sfdx force:auth:jwt:grant --client-id $SANDBOX_APP_KEY --jwt-key-file keys/server.key --username $SANDBOX_USERNAME --set-default-dev-hub -a DevHub