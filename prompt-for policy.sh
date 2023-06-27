#!/bin/bash

# Generic Script for Message Display and Action

# Display a message to the user and if they click OK open the self service policy.

messageToDisplay="$4"
policyID="$5"
policyAction="$6" # view or execute

messageToDisplay="hiya"

buttonClicked=$(osascript << EOF
button returned of (display dialog "$messageToDisplay" buttons {"OK", "Cancel"} default button 1)
EOF)

if [[ $buttonClicked == "OK" ]]; then
	open "jamfselfservice://content?entity=policy&id=$policyID&action=$policyAction"
fi
