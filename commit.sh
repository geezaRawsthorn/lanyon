#!/bin/bash

git_add(){
  git add *
}

git_commit(){
  git commit -m "$0"
}
git_push(){
  git push
}

git_add
git_commit
git_push
