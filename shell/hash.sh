#!/bin/sh

# empty hash table
echo "-- hash table --"
hash

# hash location of commands
ifconfig >/dev/null
which ls >/dev/null
echo "-- hash table --"
hash