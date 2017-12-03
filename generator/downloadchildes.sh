rm -rf workfiles
/bin/bash getCorp.sh
/bin/bash makeCorp.sh
/bin/bash makeSPA.sh
/bin/ls -lha workfiles/bigspa.csv | awk '{print $6,$7,$8,$5}' > workfiles/timestamp.txt 
/bin/bash copyStorage.sh
/bin/ls -lha workfiles | awk '{print $6,$7,$8,$5,$9}' | mail -s childesgen chang.franklin@gmail.com 