#!/bin/sh
cd $(dirname "$0")
DIR=$(pwd -L)
cd -

SOURCE_FILES=()
if [ -f ~/.bash_profile ]; then
  SOURCE_FILES+=(~/.bash_profile);
elif [ -f ~/.bashrc ]; then
  SOURCE_FILES+=(~/.bashrc);
fi

if [ -f ~/.kshrc ]; then
  SOURCE_FILES+=(~/.kshrc);
fi

for source_file in "${SOURCE_FILES[@]}"; do
  echo $source_file
  last=$(tail -1 $source_file);
  echo $last | grep "^$"
  if [ $? != 0 ]; then
    echo '' >> "$source_file"
  fi
  
  COMMAND="export PATH=\$PATH:$DIR/bin"
  grep "$COMMAND" "$source_file" > /dev/null 2> /dev/null
  if [ $? != 0 ]; then
    echo "$COMMAND" >> "$source_file"
  else
    echo 'command already added'
  fi
done

if [ ${#SOURCE_FILES[@]} == 0 ]; then
  echo '.bashrc, .bash_profile and .kshrc unfound. Please create one and run again.'
fi
