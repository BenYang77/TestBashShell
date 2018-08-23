# Single vs double quotes
# • Quotes tell the shell to treat the enclosed characters as a string
# • Variable names are not expanded in single quotes
#  STAR=*
# • echo $STAR
# • echo “$STAR”
# • echo ‘$STAR’

STAR=*
echo $STAR
echo “$STAR”
echo ‘$STAR’