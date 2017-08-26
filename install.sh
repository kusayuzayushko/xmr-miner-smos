#!/bin/bash
sudo mv /root/miner_org/wolf-xmr-miner/ /root/miner_org/wolf-xmr-miner-bkp
sudo mkdir /root/miner_org/wolf-xmr-miner/
sudo cp -r * /root/miner_org/wolf-xmr-miner/
echo "Now you can open Web Innerface, choose wolf-xmr-miner in global options"
echo "and put something like -s xmr-eu1.nanopool.org:14444\ -w YOUR_XMR_WALLET.$rigName -p z -i 1024 "
echo "into commandline string."
