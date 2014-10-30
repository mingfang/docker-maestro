docker run -v `pwd`:/docker -w /docker -v /var/run/docker.sock:/var/run/docker.sock --rm -t maestro $@
