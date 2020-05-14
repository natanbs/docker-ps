#!/bin/bash

filter='"prom|portainer"'
options="aiIcCRpsSNLl:mnd"
if [[ $1 == "" ]]; then
  echo
  echo Usage:
  echo "$0 -${options}"
  echo
  echo "-a  ps -a        Include exited containers"
  echo "-f  filter       Filtr out (grep -v)  specific containers - Set the var filter='prom|grafa|portainer' (with no spaces) - Not supported" 
  echo "-i .ID           Container ID."
  echo "-I .Image        Image ID."
  echo "-c .Command      Quoted command."
  echo "-C .CreatedAt    Time when the container was created."
  echo "-R .RunningFor   Elapsed time since the container was started."
  echo "-p .Ports        Exposed ports."
  echo "-s .Status       Container status".
  echo "-S .Size         Container disk size."
  echo "-N .Names        Container names."
  echo "-L .Labels       All labels assigned to the container."
  echo "-l .Label        Value of a specific label for this container. For example '{{.Label "com.docker.swarm.cpu"}}'"
  echo "-m .Mounts       Names of the volumes mounted in this container."
  echo "-n .Networks     Names of the networks attached to this container."
  echo "-d default       With params -NisSI"
  echo
  exit
fi
ps="ps"
OPs=
id=
image=
eGrep=
while getopts "${options} --" OPTION  
  do
    case $OPTION in
      a) a="-a"
        ps="${ps} ${a}"
      ;;
      f) eGrep="\\| grep -Ev $filter"
	 echo EGREP: $eGrep
      ;;
      i) i=".ID"
         OPs="${OPs} {{${i}}}"
      ;;
      I) I=".Image"
         OPs="${OPs} {{${I}}}"
      ;;
      c) c=".Command"
         OPs="${OPs} {{${c}}}"
      ;;
      C) C=".CreatedAt"
         OPs="${OPs} {{${C}}}"
      ;;
      R) R=".RunningFor"
         OPs="${OPs} {{${R}}}"
      ;;
      p) p=".Ports"
         OPs="${OPs} {{${p}}}"
      ;;
      s) s=".Status"
         OPs="${OPs} {{${s}}}"
      ;;
      S) S=".Size"
         OPs="${OPs} {{${S}}}"
      ;;
      N) N=".Names"
         OPs="${OPs} {{${N}}}"
      ;;
      L) L=".Labels"
         OPs="${OPs} {{${L}}}"
      ;;
      l) l=".Label"
         OPs="${OPs} {{${l}}}"
      ;;
      m) m=".Mounts"
         OPs="${OPs} {{${m}}}"
      ;;
      n) n=".Networks"
         OPs="${OPs} {{${n}}}"
      ;;
      d) d="-NisSI"
	 N=".Names"
	 i=".ID"
	 s=".Status"
	 S=".Size"
	 I=".Image"

         OPs="${OPs} {{${N}}} {{${i}}} {{${s}}} {{${S}}} {{${I}}}"
      ;;
  esac
done
echo
echo docker ${ps} --format '"' "${OPs}" '"' $eGrep | column -t
echo
docker ${ps} --format "${OPs}" $eGrep | column -t
echo
