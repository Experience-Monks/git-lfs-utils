#!/bin/bash
cd $(dirname "$0")
DIR=$(pwd -L)
cd - > /dev/null

SOURCE_FILES=()
COMMANDS=("export PATH=\$PATH:$DIR/bin")

if [ -f ~/.bash_profile ]; then
  SOURCE_FILES+=(~/.bash_profile);
elif [ -f ~/.bashrc ]; then
  SOURCE_FILES+=(~/.bashrc);
fi

if [ -f ~/.kshrc ]; then
  SOURCE_FILES+=(~/.kshrc);
fi

if [ "$1" == "--override-git" ]; then
  COMMANDS+=(". $DIR/full-git-override.sh")
fi

for source_file in "${SOURCE_FILES[@]}"; do
  last=$(tail -1 $source_file);
  echo $last | grep "^$" > /dev/null 2>&1
  if [ $? != 0 ]; then
    echo '' >> "$source_file"
  fi
  
  for COMMAND in "${COMMANDS[@]}"; do
    grep "$COMMAND" "$source_file" > /dev/null 2>&1
    if [ $? != 0 ]; then
      echo "$COMMAND" >> "$source_file"
    else
      echo 'command already added to your path'
    fi
  done
done

if [ ${#SOURCE_FILES[@]} == 0 ]; then
  echo '.bashrc, .bash_profile and .kshrc unfound. Please create one and run again.'
fi
