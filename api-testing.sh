#!/bin/bash

# API Call Testing
CURL_CMD="curl -s"
JAMF_CREDS="-u jamfadmin:jamf1234"
CONTENT_TYPE="\"Content-Type: application/xml\""
JSS_URL="https://pro.jamf.training:8443/10/JSSResource/"

# Update Inventory

# $CURL_CMD $JAMF_CREDS -H $CONTENT_TYPE $JSS_URL

curl -su jamfadmin:jamf1234 -H "Content-type: application/xml" https://pro.jamf.training:8443/10/JSSResource/mobiledevicecommands/command/UpdateInventoryid/3000 -X POST

# Upload Log File

curl -su jamfadmin:jamf1234 https://pro.jamf.training:8443/10/JSSResource/fileuploads/computers/id/3000 -F name=@/var/log/system.log -X POST

# Delete Site by ID

curl -su jamfadmin:jamf1234 -H "Content-type: application/xml" https://pro.jamf.training:8443/10/JSSResource/sites/id/14 -X DELETE
