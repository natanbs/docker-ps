# show-dockers
## Personalise docker ps view

### Usage:
./show-dockers.sh -iIcCRpsSNLli:mn<br>

-i .ID           Container ID.<br>
-I .Image        Image ID.<br>
-c .Command      Quoted command.<br>
-C .CreatedAt    Time when the container was created.<br>
-R .RunningFor   Elapsed time since the container was started.<br>
-p .Ports        Exposed ports.<br>
-s .Status       Container status.<br>
-S .Size         Container disk size.<br>
-N .Names        Container names.<br>
-L .Labels       All labels assigned to the container.<br>
-l .Label        Value of a specific label for this container. For example '{{.Label com.docker.swarm.cpu}}'<br>
-m .Mounts       Names of the volumes mounted in this container.<br>
-n .Networks     Names of the networks attached to this container.<br>
