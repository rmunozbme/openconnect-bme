#!/bin/bash
export DISPLAY=host.docker.internal:0
openconnect 193.110.154.60 --no-cert-check -b  --csd-wrapper=/root/csd-wrapper.sh --authgroup=Teletrabajo_Emergencia -s "vpn-slice 10.0.0.0/8 bmeintranet.bme.com soporte.grupobme.es bmerrhh.bme.com hb1.bme.com inventario-unix.bme.com gitlab.grupobme.es bmelrcktb1.bme.com " 
/bin/bash
