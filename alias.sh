#!/bin/bash
#
#This script sets up aliases to make my work easier
#
#
#

aliases=(
	"alias gcl='git clone'"
	"alias gf='git fetch'"
	"alias gcp='git cherry-pick'"
	"alias gcps='git cherry-pick -s'"
	"alias gre='git rebase -i'"
	"alias gr='git revert'"
	"alias gp='git push'"
	"alias gpf='git push -f'"
	"alias gaa='git add --all'"
	"alias ga='git add'"
	"alias gc='git commit'"
	"alias gcs='git commit -s'"
	"alias gca='git commit --amend'"
	"alias gch='git checkout'"
	"alias gchb='git checkout -b'"
	"alias gb='git branch'"
)

for i in "${aliases[@]}"
do
	echo $i >> ~/.bashrc
done

source ~/.bashrc
