#!/bin/bash
# FileVault Check and Prompt
fvStatus=$(fdesetup status | awk '{ print $3 }' | tr -d .)
if [[ "$fvStatus" == "Off" ]]; then
  jamf displayMessage -message 'FileVault is required.'
   open 'jamfselfservice://content?entity=policy&id=#&action=view' 
else
  jamf recon
fi
