
function input
{
  echo "How many files are there in this directory?"
}
input

filenum=(*)
filenum=${#filenum[@]}

while [[ $filenum -ne $n ]]
do
   # echo "How many files are there in this directory? "
    read n
  if [[ $filenum -eq $n ]]
  then
    echo "Congratulations! You have guessed it correct!"
  elif [[ $filenum -gt $n ]]
  then
    echo "Your guess is too low. Please try again."
  else
    echo "Your guess is too high. Please try again."
  fi
done

