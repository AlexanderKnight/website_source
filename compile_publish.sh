#!/bin/bash

make publish
read -p "commit message: " message
echo "Commit message is: $message."
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || [yY][eE][sS] ]] || exit 1

git add *
git commit -m "$message"
git push

cd output
git add *
git commit -m "$message"
git push

cd ../
