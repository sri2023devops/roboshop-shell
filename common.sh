script_location=$(pwd)
LOG=/tmp/roboshop.log
status_check()
{
  if [ $? -eq 0 ]; then
    echo -e "\e[32mSUCCESS\e[0m"
  else
    echo -e "\e[31mFAILURE\e[0m"
    echo "Refer log for more details LOG- ${LOG}"
  exit
  fi
}