#!/bin/bash
# kill local 
ps aux | grep "[m]nt2" | awk {'print $2'} |xargs kill -9 

diskutil unmount force  ../mnt2

/bin/rm -rdf ./tmp

# add -p to enable  proxy on 127.0.0.1:18888

python3 x.py -m '../mnt2' -k 123 $1

# mpv -v  --cache-secs 7 mnt2/4.mp4
