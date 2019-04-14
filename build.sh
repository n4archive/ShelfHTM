#!/bin/bash
USG="Usage:\n$0 <htmsrc> <htmbin> <assets>"
echo "ShelfHTM/1.0 ShelfComp-SH/1.0"
echo
echo "This application needs 'file', 'find' and 'python3'"
echo
echo
[ x$1 == x ] && echo -e $USG && exit 1
[ x$2 == x ] && echo -e $USG && exit 1
[ x$3 == x ] && echo -e $USG && exit 1
if [ ! -d $1 ];then echo -e $USG;exit 1;fi
if [ ! -d $2 ];then echo -e $USG;exit 1;fi
if [ ! -d $3 ];then echo -e $USG;exit 1;fi
echo "Compiling..."
mkdir .sbs
echo "RklMRT0iJDEiCkZSST0ic2hlbGY6JEZJTEUiCkZNSU1FPWBmaWxlIC1iIC0tbWltZS10eXBlICRGSUxFfHNlZCAtZSAicy9cXC8vXFw/L2ciYApiYXNlNjQgLXcgMCAkRklMRT4uLi8uc2JzL3RtcApGUlA9ImRhdGE6JEZNSU1FO2Jhc2U2NCxfaV9kYXRfIgpUTVA9YHNlZCAtZSAicy8kRlJJLyRGUlAvZyIgPCQzYAplY2hvICRUTVB8c2VkIC1lICJzL1xcPy9cXC8vZyIgPiQzCnB5dGhvbjMgLWMgImY9b3BlbihcIi4uLy5zYnMvdG1wXCIsXCJyXCIpO2YyPW9wZW4oXCIkM1wiLFwiclwiKTt4PWYyLnJlYWQoKS5yZXBsYWNlKFwiX2lfZGF0X1wiLGYucmVhZCgpKTtmLmNsb3NlKCk7ZjIuY2xvc2UoKTtmMz1vcGVuKFwiJDNcIixcIndcIik7ZjMud3JpdGUoeCk7ZjMuY2xvc2UoKTsiCg==" | base64 -d > .sbs/buildhelper.sh
echo "WD1gZWNobyAkMSB8IGN1dCAtYyA0LWAKY3AgJDIvJFggJDMvJFgKY2QgJDQKZmluZCAqIC10eXBlIGYgLWV4ZWMgYmFzaCAuLi8uc2JzL2J1aWxkaGVscGVyLnNoIHt9IC4uLyQyLyRYIC4uLyQzLyRYICI7IgpjZCAuLgo=" | base64 -d > .sbs/file.sh
find $1 -type f -exec bash .sbs/file.sh {} $1 $2 $3 ";"
rm -rdf .sbs
echo "Finished."
