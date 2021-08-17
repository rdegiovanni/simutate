#!/bin/bash
USERDIR=/home/users/rdegiovanni/
RESULT_DIR=$USERDIR/simulation-codebert-results/
for txt_file in `ls -l simulation-codebert/simulation-*`; do	# echo $source_file
	echo $txt_file
	BASE_NAME=${txt_file%%.txt*}
	IFS='-' #setting comma as delimiter  
	read -a strarr <<<"$BASE_NAME" 
	PROJECT_NAME="${strarr[1]}"
	BUG_ID="${strarr[2]}"
	echo $PROJECT_NAME
	echo $BUG_ID
	#if [[ $BUG_ID == $1* ]] ;
	#then
	#  echo $BUG_ID
	#  
	#  echo $BASE_NAME
    #  sbatch --job-name=$BUG_ID --output=$RESULT_DIR/$BUG_ID.out ./simutate.sh $BASE_NAME $BUG_ID
	#fi
done 


