#!/bin/sh

if [ -z $REPO ]
then
  echo "no repo found"
else
  cd /
  git clone $REPO /repo
  cd /repo
  cat /app/config.conf > /repo/config.conf
fi

if [ -z $MAIN_PY ]
then
  echo "starting poll.py"
  python3 poll.py
else
  python3 $MAIN_PY
fi
