#!/usr/bin/env bash
OVAFILE=${1%.ova}
tar -xvf $1
VMDKFILE=$(echo *vmdk)
qemu-img convert -O qcow2 $VMDKFILE ${OVAFILE}.qcow2
file ${OVAFILE}*
