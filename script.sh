#!/bin/bash

START_DATE=$(date)
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RESET='\033[0m'

print () {
  echo -e "$BLUE [$(date)] $YELLOW $1 $RESET\n"
}

main () {
  echo "What do you want?:"
  echo "1. Create file"
  echo "2. Create directory"
  echo "3. List files"
  echo "4. Copy file"
  echo "5. Exit"

  read INPUT

  if [[ $INPUT == 1 ]]; then
          create_file
  elif [[ $INPUT == 2 ]]; then
          create_directory
  elif [[ $INPUT == 3 ]]; then
          list_files
  elif [[ $INPUT == 4 ]]; then
          copy_file
  elif [[ $INPUT == 5 ]]; then
          _exit
  else
          exit 0
  fi
}

create_file() {
  echo "Enter file name: "
  read filename
  touch $filename
}

create_directory() {
  echo "Enter directory name: "
  read dirname
  mkdir $dirname
}

list_files() {
  ls -la
}

copy_file() {
  echo "Enter file to copy: "
  read file_to_copy
  echo "Enter destination path: "
  read path
  cp $file_to_copy $path
}

_exit() {
  exit 0
}

echo -e $YELLOW"\n\n --------------------------------------------------------------- \n" \
    "| Script made by Bartosz Rogowski                             |\n" \
    "| Mail: barrog@st.amu.edu.pl | bartosz.rogowski@protonmail.ch | \n" \
    "| Github: github.com/rogovskyyy                               | \n" \
    "---------------------------------------------------------------"

print "Welcome to bash script"

main

echo -e $RESET
