#!/bin/bash
export DISPLAY=host.docker.internal:0
openconnect ${VPNSERVER} --no-cert-check -b  --csd-wrapper=/root/csd-wrapper.sh -u ${VPNUSER} --authgroup=${VPNGROUP} -s "vpn-slice $(cat /filtrosVPN | paste -sd " ") " 
/bin/bash
