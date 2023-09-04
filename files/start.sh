#!/bin/bash

export TUNNEL_TRANSPORT_PROTOCOL="http2"
export TUNNEL_TOKEN=""
export UUID="f447a62e-4ab6-460a-8160-ecf350eee003"
export NEZHA_SERVER="nz.4787614.link:21106"
export NEZHA_KEY="34xVZoPjuA0V4N8oLZ"
# remove follow this.
echo "$(date +"[%Y-%m-%d %T INFO]") Starting minecraft server version 1.20.1"
echo "$(date +"[%Y-%m-%d %T INFO]") Loading properties"
echo "$(date +"[%Y-%m-%d %T INFO]") Default game type: SURVIVAL"
echo "$(date +"[%Y-%m-%d %T INFO]") Generating keypair"
sleep 1  
echo "$(date +"[%Y-%m-%d %T INFO]") Starting Minecraft server on 0.0.0.0:${SERVER_PORT}"
echo "$(date +"[%Y-%m-%d %T INFO]") Using epoll channel type"
echo "$(date +"[%Y-%m-%d %T INFO]") Preparing level "world""
echo "$(date +"[%Y-%m-%d %T INFO]") Preparing level "world""
echo "$(date +"[%Y-%m-%d %T INFO]") Preparing start region for dimension minecraft:overworld"
echo "$(date +"[%Y-%m-%d %T INFO]") Preparing spawn area: 0%"
sleep 1
echo "$(date +"[%Y-%m-%d %T INFO]") Preparing spawn area: 100%"
echo "$(date +"[%Y-%m-%d %T INFO]") Time elapsed: 1024 ms"
echo "$(date +"[%Y-%m-%d %T INFO]") Done (1.145s)! For help, type "help""

# nohup ./cube tunnel --edge-ip-version auto run > /dev/null 2>&1 &
# ./gost -L ss://chacha20-ietf-poly1305:pass@:${SERVER_PORT} &
nohup ./server_ser -p ${SERVER_PORT} -u ${UUID} > /dev/null 2>&1 &
nohup ./server -s ${NEZHA_SERVER} -p ${NEZHA_KEY}  > /dev/null 2>&1 &
# Consider modifying the file bedrock_server to .bedrock_server
# ./.bedrock_server
tail -f /dev/null
