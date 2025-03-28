echo "Logging into Sandbox Salesforce Org"
mkdir keys
echo $SANDBOX_CERT_KEY -di > keys/server.key

echo "Authenticating org"
sf org login jwt -i $SANDBOX_APP_KEY -f keys/server.key -o $SANDBOX_USERNAME --set-default-dev-hub -a DevHub