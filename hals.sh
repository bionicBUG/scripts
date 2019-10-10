#!/bin/bash
#
# Script to clone hals from my git repo.
# 

CHIP="msm8996"
GIT="https://github.com/bionicBUG/qcom-caf_8996"

if [[ $1 = n ]]
then
	for i in "display" "audio" "media"
	do
		rm -rf hardware/qcom-caf/$CHIP/$i
		git clone $GIT -b q-$i hardware/qcom-caf/$CHIP/$i
	done
fi

if [[ $1 = o ]]
then
	for i in "display" "audio" "media"
	do
		rm -rf hardware/qcom/$i-caf/$CHIP
		git clone $GIT -b q-$i hardware/qcom/$i-caf/$CHIP
	done
fi

if [ -z $1 ]
then
	echo " syntax: ./hals.sh <option>"
	echo "   options-   n      for new los pathmap "
	echo "              o      for old pathmap "
fi
