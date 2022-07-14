# misc
Scripts and snippets I use during security assessments and reverse engineering.

### collab.config
-------------------
This file is used to deploy Burp Collaborator by using this command:

`/usr/bin/java -Xms10m -Xmx200m -XX:GCTimeRatio=19 -jar /home/kali/collab/burpsuite_pro.jar --collaborator-server --collaborator-config=/home/kali/collab/collab.config`


### install_collab_certs.sh
--------------------
This file transfers the correct keys from LetsEncrypt to the Burp Collaborator Directory.

### traefik.yml
--------------------
This file is used to set up a reverse proxy in pentests and red team assessments.

Prerequisites:
- working DNS (I use transip)
- Server connected to the internet, no NAT, no WAF, just use a AWS instance or something

### crapfiller.py
--------------------
This file is a skeleton to fill scam sites with fake data.
