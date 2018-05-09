#!/bin/bash 

# Usage: ./pd-admin_delete.sh domains
# The 'domains' file should contain one domain per line

# By default, the script uses a 300ms delay.
# Sleep is not necessary, but always a nice option.
sleep=0.3

# Don't read lines with 'for'. Use a 'while' loop and 'read'.
while IFS= read -r domain
do
  sleep $sleep
  echo $domain 

  delete=`/opt/pdadmin/bin/domain_del.pl $domain` 

done < "$1"
