#! /bin/bash

echo "enter first ip address"

read firstip

echo "enter last ip address"

read lastip

echo "Enter the port"

read port

nmap -sT $fistip-$lastip -p $port > /dev/null -oG sql

cat sql | grep open > sql2
cat sql 