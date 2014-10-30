docker-maestro
==============

Wraps MaestroNG inside Docker

##Purpose
To run MaestroNG easily by wrapping it along with all it's dependencies inside Docker.

##Install
1. Clone this repository
2. Build image using ```build```

##Using
1. Create a MaestroNG YAML file
2. Run using ```./m -f /docker/<your yaml file> start```

##Demo
The demo.yaml will run ```echo "hello world"``` using the standard ubuntu image.
Run the demo using ```./m -f /docker/demo.yaml start```.
The container will run and quickly exit.
To see the output do a ```docker logs <id>```

##socat
Socat is configured inside the container to tunnel tcp traffic at port 4243 to the docker Unix socket.
This enables quick testing using the local Docker daemon without having to reconfigure it for tcp traffic.

