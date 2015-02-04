#!/bin/bash

echo "Creating SSH Tunnel over cluster " $2 " to node " $1 
ssh -N -f -L 65250:$1:65250 $2

