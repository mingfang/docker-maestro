docker run -v `pwd`:/docker -v /var/run/docker.sock:/var/run/docker.sock --rm --net="host" -t maestro $@
