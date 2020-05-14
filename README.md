# docker-ps.sh
## Personalise docker ps view
### Select your preferred arguments and the order they appear

### Usage:
./docker-ps.sh -aiIcCRpsSNLli:mnd<br>

<table>
  <tr>
    <td>-a</td><td>Exited</td><td>Include exited containers</td>
  </tr>
  <tr>
    <td>-i</td><td>.ID</td><td>Container ID.</td>
  </tr>
  <tr>
    <td>-I</td><td>.Image</td><td>Image ID.</td>
  </tr>
  <tr>
    <td>-c</td><td>.Command</td><td>Quoted command.</td>
  </tr>
  <tr>
    <td>-C</td><td>.CreatedAt</td><td>Time when the container was created.</td>
  </tr>
  <tr>
    <td>-R</td><td>.RunningFor</td><td>Elapsed time since the container was started.</td>
  </tr>
  <tr>
    <td>-p</td><td>.Ports</td><td>Exposed ports.</td>
  </tr>
  <tr>
    <td>-s</td><td>.Status</td><td>Container status.</td>
  </tr>
  <tr>
    <td>-S</td><td>.Size</td><td>Container disk size.</td>
  </tr>
  <tr>
    <td>-N</td><td>.Names</td><td>Container names.</td>
  </tr>
  <tr>
    <td>-L</td><td>.Labels</td><td>All labels assigned to the container.</td>
  </tr>
  <tr>
    <td>-l</td><td>.Label</td><td>Value of a specific label for this container. For example '{{.Label com.docker.swarm.cpu}}'</td>
  </tr>
  <tr>
    <td>-m</td><td>.Mounts</td><td>Names of the volumes mounted in this container.</td>
  </tr>
  <tr>
    <td>-n</td><td>.Networks</td><td>Names of the networks attached to this container.</td>
  </tr>
  <tr>
    <td>-d</td><td>default</td><td>With params -NisSI.</td>
  </tr>
<table>
