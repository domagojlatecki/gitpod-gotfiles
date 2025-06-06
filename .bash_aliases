export ALIAS_HOME="$HOME/bash-aliases"
export ALIAS_FILES="$ALIAS_HOME/simple_aliases.sh $ALIAS_HOME/functions.sh $ALIAS_HOME/config.sh"

for ALIAS_FILE in $ALIAS_FILES; do
    source "$ALIAS_FILE"
done
