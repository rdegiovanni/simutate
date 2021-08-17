#!/bin/bash
USERDIR=/home/users/rdegiovanni/
SIMU_DIR=/home/users/rdegiovanni/simulation-codebert-results/
echo $SIMU_DIR
for txt_file in `ls simulation-codebert/simulation-*`; do	# echo $source_file
	echo $txt_file
	BASE_NAME=${txt_file%%.txt*}
	OLD_IFS=$IFS
	IFS='-' #setting comma as delimiter  
	read -a strarr <<<"$BASE_NAME" 
	PROJECT_NAME="${strarr[2]}"
	BUG_ID="${strarr[3]}"
	echo $PROJECT_NAME
	echo $BUG_ID
	IFS=$OLD_IFS
	mv $txt_file $SIMU_DIR/.
	mv -f simulation-codebert/$BUG_ID $SIMU_DIR/.
	rm -r experiment_mutants-codebert/$BUG_ID
	#if [[ $BUG_ID == $1* ]] ;
	#then
	#  echo $BUG_ID
	#  
	#  echo $BASE_NAME
    #  sbatch --job-name=$BUG_ID --output=$RESULT_DIR/$BUG_ID.out ./simutate.sh $BASE_NAME $BUG_ID
	#fi
done 


