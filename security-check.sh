#!/bin/bash

echo "Mac Security Check"
echo "------------------"

echo "Current user:"
whoami

echo "macOS version:"
sw_vers -productVersion

echo "FileVault status:"
fdesetup status
if fdesetup status | grep -q "FileVault is On"; then
    echo "PASS: FileVault encryption is enabled"
else
    echo "WARNING: FileVault encryption is not confirmed as enabled"
fi
