# readonly_ex.sh	
# $ cat readonly_ex.sh
#!/bin/bash
# Restricting an array as a readonly
clear
readonly -a shells=("ksh" "bash" "sh" "csh" );
echo shells:${#shells[@]}

# Trying to  modify an array, it throws an error
shells[0]="gnu-bash"

echo ${shells[@]}

# $ ./readonly_ex.sh
# 4
# readonly_ex.sh: line 9: shells: readonly variable