#!/bin/bash

crc delete
crc setup
~/Documents/crc_start_instructions.sh
oc login -u kubeadmin -p cznQP-n4pBk-cnXTg-nkevH https://api.crc.testing:6443
oc new-project mlperf
oc create -f pipeline/imagestream.yml

