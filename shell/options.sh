# $ cat options.sh
#! /bin/bash

while getopts :h:r:l: OPTION
do
         case $OPTION in
          h) echo "help of $OPTARG"
             help "$OPTARG"
             ;;
          r) echo "Going to remove a file $OPTARG"
             rm -f "$OPTARG"
            ;;
         esac
done

# $ ./options.sh -h jobs
# help of jobs
# jobs: jobs [-lnprs] [jobspec ...] or jobs -x command [args]
    # Lists the active jobs.  The -l option lists process id's in addition
    # to the normal information; the -p option lists process id's only.