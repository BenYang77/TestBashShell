# Loop_ex.sh
#!/bin/bash
echo "Name of script is $0"
echo "Command line argument 1 is $1"
echo "there are $# command line arguments: $@"

for val in $@; 
do
#for val in `seq 4`; do
#for val in red blue green; do
    echo "A val is: $val"
done