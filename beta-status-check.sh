#!/bin/bash

# Collect Beta Enrolled Status

betaEnrolledStatus=$(sudo /System/Library/PrivateFrameworks/Seeding.framework/Resources/seedutil current | awk '/enrolled/{print $NF}')

printf '<result>'$betaEnrolledStatus'</result>'
