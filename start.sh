#!/bin/bash

while getopts s:w:p:i: option
do
 case "${option}"
 in
 s) SERVER=${OPTARG};;
 w) WALLET=${OPTARG};;
# r) RIGNAME=${OPTARG};;
 p) PASSWORD=${OPTARG};;
 i) INTENSITY=${OPTARG};;
 esac
done
GPUNUMBER=`lspci | grep VGA | grep ATI | wc -l`
sed '/"gpu_threads_conf"/,/],/d' -i config.txt
echo "\"gpu_threads_conf\" : [ " >> config.txt
for (( i=0; i<$GPUNUMBER; i++ )); do
    echo "$i"
    echo "     { \"index\" : $i, \"intensity\" : 1000, \"worksize\" : 8, \"affine_to_cpu\" : false }," >> config.txt
done
echo "]," >> config.txt

sed -i "s/\"gpu_thread_num\" : [0-9]*,/\"gpu_thread_num\" : $GPUNUMBER, /" config.txt
if [[ $INTENSITY -ne ""  ]]; then
	sed -i "s/\"intensity\" : [0-9]*,/\"intensity\" : $INTENSITY,/g" config.txt
fi

sed -i "s/\"pool_address\" : \"[^,]*\",/\"pool_address\" : \"$SERVER\",/"  config.txt

sed -i "s/\"wallet_address\" : \"[^,]*\",/\"wallet_address\" : \"$WALLET\",/" config.txt

sed -i "s/\"pool_password\" : \"[^,]*\",/\"pool_password\" : \"$PASSWORD\",/" config.txt

./xmr-stak-amd
