#!/bin/bash

# This script copies the created LetsEncrypt keys to the correct Collaborator folder

CERT_PATH=/etc/letsencrypt/live/example.com/
mkdir -p /home/kali/collab/keys/

if [[ -f $CERT_PATH/privkey.pem && -f $CERT_PATH/fullchain.pem && -f $CERT_PATH/cert.pem ]]; then
        cp $CERT_PATH/privkey.pem /home/kali/collab/keys/
        cp $CERT_PATH/fullchain.pem /home/kali/collab/keys/
        cp $CERT_PATH/cert.pem /home/kali/collab/keys/
        chown -R collaborator:nogroup /home/kali/collab/keys
        echo "Certificates installed successfully"
else
        echo "Unable to find certificates in $CERT_PATH"
fi
