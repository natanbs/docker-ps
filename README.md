# Customize docker ps
## Personalise docker ps view

### Usage:
./docker-ps.sh -iIcCRpsSNLli:mn<br>

<table border = "1">
<tr>
  <td>-i .ID           Container ID.</td>
  <td>-I .Image        Image ID.</td>
  <td>-c .Command      Quoted command.</td>
  <td>-C .CreatedAt    Time when the container was created.</td>
  <td>-R .RunningFor   Elapsed time since the container was started.</td>
  <td>-p .Ports        Exposed ports.</td>
  <td>-s .Status       Container status.</td>
  <td>-S .Size         Container disk size.</td>
  <td>-N .Names        Container names.</td>
  <td>-L .Labels       All labels assigned to the container.</td>
  <td>-l .Label        Value of a specific label for this container. For example '{{.Label com.docker.swarm.cpu}}'</td>
  <td>-m .Mounts       Names of the volumes mounted in this container.</td>
  <td>-n .Networks     Names of the networks attached to this container.</td>
</td>
<table>
