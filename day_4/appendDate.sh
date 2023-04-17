current_date=$(date +%d-%m-%y)

for log_file in *.log;
do

 dir_name="${log_file%.*}"
 if [ ! -d "$dir_name" ]; then
   mkdir "$dir_name"
 fi
 destination_file="$dir_name/${log_file%.*}_$current_date.log"
 cp "$log_file" "$destination_file"

done

