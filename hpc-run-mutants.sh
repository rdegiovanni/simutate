#!/bin/bash


RESULT_DIR=result/
while read BUG_ID; do
	# echo $source_file
	if [[ $BUG_ID == $1* ]] ;
	then
	  echo $BUG_ID
	  BASE_NAME=${BUG_ID%%_*}
	  echo $BASE_NAME
      sbatch --job-name=$BUG_ID --output=$RESULT_DIR/$BUG_ID.out ./simutate.sh $BASE_NAME $BUG_ID
	fi
done < bugs_id_analysed.txt


