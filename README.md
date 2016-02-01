# Manual pages, Linux version

 As a developer for Linux embedded systems, I often want to consult the man
 pages for certain methods.
 
 However, my development machine is a MacBook and the man pages for Mac are
 actually BSD man pages. And even though these are nearly identical to Linux
 ones, sometimes there is a slight but important detail that is different
 enough to throw you off.
 
 For the command-line tools, it is even worse: BSD `sed` or `od` are quite
 different than their Linux counterparts.
 
 So, to make my life a little bit easier, I created a simple Docker image,
 based on the official Debian image, to allow we to view Linux man pages
 straight from the terminal of OS X.
 
 I created a small script `lman` with following content:
 
 ```bash
 #!/usr/bin/env bash

docker run -it --rm jorislammers/linuxman:latest $*
 ```
 
 To finally get your man page, all you need to do is run `lman ps` (for 
example) and you will see the appropriate Linux man page and even the 
pager will work properly (BTW, the pager is `less` so you can scroll back and
forth and search through the man page with `/`).

Enjoy!