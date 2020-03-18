# show-dockers
## Personalise docker ps view

### Usage:
./show-dockers.sh -iIcCRpsSNLli:mn

-i .ID           Container ID.
-I .Image        Image ID.
-c .Command      Quoted command.
-C .CreatedAt    Time when the container was created.
-R .RunningFor   Elapsed time since the container was started.
-p .Ports        Exposed ports.
-s .Status       Container status.
-S .Size         Container disk size.
-N .Names        Container names.
-L .Labels       All labels assigned to the container.
-l .Label        Value of a specific label for this container. For example '{{.Label com.docker.swarm.cpu}}'
-m .Mounts       Names of the volumes mounted in this container.
-n .Networks     Names of the networks attached to this container.
