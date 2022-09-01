#!/bin/bash

var=$1

Tssl(){
echo -e "\033[5;31;40m[+] Starting testssl\033[0m"
/opt/testssl.sh/testssl.sh $var | tee testssloutput.txt
}

Tssl-analyze(){
echo -e "\033[5;31;40m[+] Analyzing Output in testssl-analyzer(KDB)\e[0m"
/opt/testssl-analyzer/testssl-analyzer.sh ~/Desktop/mytools/synrish/testssloutput.txt | tee testssl-analyzer-output.txt
}

Dirsrch(){
echo -e "\033[5;31;40m[+] Starting dirsearch\e[om"
python3 /opt/dirsearch/dirsearch.py -u $var -i 200,301 -o dirsearch.txt
}

Parspider(){
echo -e "\033[5;31;40m[+] Starting Paramspider\e[0m"
python3 /opt/ParamSpider/paramspider.py -d $var
}

Arjun(){
echo -e "\033[5;31;40m[+] Starting Arjun\e[0m"
arjun -u $var -t10 -m GET/POST/XML/JSON --passive --stable < arjun.txt
}

nkto(){
echo -e "\033[5;31;40m[+] Starting Nikto\e[0m"
nikto -h $var | tee nikto_output.txt
}

Tssl
Tssl-analyze
Dirsrch
Parspider
Arjun
nkto
