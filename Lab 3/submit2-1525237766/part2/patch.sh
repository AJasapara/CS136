#!/bin/bash

sudo mkdir /home/memo-usergroup
sudo groupadd memo-usergroup
sudo chgrp -R memo-usergroup /home/memo-usergroup
sudo chmod 755 /home/memo-usergroup
sudo mkdir /home/memo-usergroup/memo
sudo chmod 1775 /home/memo-usergroup/memo
cd /usr/lib/cgi-bin
sudo cp /root/part2/memo.patch .
sudo chmod -s memo.cgi
sudo patch < memo.patch
