#!/bin/bash

today=`date '+%Y-%m-%d %H:%M:%S'`

git add .

git status

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "canceled." ; exit ;; esac

git commit -m "$today"
git push origin main