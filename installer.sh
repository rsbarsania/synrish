#!/bin/bash

echo "\033[5;31;40m[+] Making directories\033[0m"
sudo cd /opt

echo "\033[5;31;40m[+] Installing required tools\033[0m"
git clone https://github.com/drwetter/testssl.sh.git
git clone https://github.com/darklotuskdb/testssl-analyzer.git && cd testssl-analyzer && sed -i 's/CmdG$/#CmdG/g' testssl-analyzer.sh
git clone https://github.com/maurosoria/dirsearch.git && cd dirsearch && pip3 install -r requirements.txt; 
git clone https://github.com/devanshbatham/ParamSpider.git
