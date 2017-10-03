#!/bin/bash

curDate=`date "+%Y%m%d"`
before6Mths=`date -d "$curDate -6 months" "+%Y%m%d"`

echo "Today is: $curDate"
echo "Date before 6 months is: $before6Mths"

#change week day format to string
dayBefore6Mths=$(date -d "$before6Mths" "+%A")
echo "Weekdays before 6 months is: $dayBefore6Mths"

startDate=$before6Mths


if [[ $dayBefore6Mths == "Sunday" ]]; then
  startDate=`date -d "$before6Mths +7 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
elif [[ $dayBefore6Mths == "Monday" ]]; then
  startDate=`date -d "$before6Mths +6 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
elif [[ $dayBefore6Mths == "Tuesday" ]]; then
  startDate=`date -d "$before6Mths +5 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
elif [[ $dayBefore6Mths == "Wednesday" ]]; then
  startDate=`date -d "$before6Mths +4 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
elif [[ $dayBefore6Mths == "Thursday" ]]; then
  startDate=`date -d "$before6Mths +3 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
elif [[ $dayBefore6Mths == "Friday" ]]; then
  startDate=`date -d "$before6Mths +2 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
elif [[ $dayBefore6Mths == "Saturday" ]]; then
  startDate=`date -d "$before6Mths +1 days" "+%Y%m%d"`
  echo "Usage will start at: $startDate"
fi