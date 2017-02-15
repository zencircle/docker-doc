[ec2-user@ip-10-153-93-180 ~]$ cat tagdocker.sh 
#!/bin/sh
#
# Simple script that will display docker repository tags.
#
# Usage:
#   $ docker-show-repo-tags.sh ubuntu centos
  curl -s -S "https://index.docker.io/v1/repositories/$1/tags" | \
    sed -e 's/,/,\n/g' -e 's/\[/\[\n/g' | \
    grep '"name"' | \
    awk -F\" '{print $4;}' | \
    sort -fu | \
    sed -e "s/^/${Repo}:/"
