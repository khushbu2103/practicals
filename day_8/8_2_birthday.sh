for i in {1..50}; do
    year=$(( (RANDOM % 2) + 92 ))  # generate random year (92 or 93)
    month=$(( (RANDOM % 12) + 1 ))  # generate random month (1-12)
    echo "$i,$month,$year"  # print person number, month, and year
done | sort -t, -k2n > birthdays.csv  # sort by month and save to file

# Find all individuals having birthdays in the same month
prev_month=""
while read line; do
    month=$(echo "$line" | cut -d',' -f2)
    if [[ "$month" == "$prev_month" ]]; then
        echo "Same birth month: $prev_line and $line"
    fi
    prev_month="$month"
    prev_line="$line"
done < birthdays.csv
