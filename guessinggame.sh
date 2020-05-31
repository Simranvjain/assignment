
function input
{
    echo "How many files are there in this directory?" 
}
input

filenum=(*)
filenum=$(ls -l -a . | egrep -c '^-')


while [[ $filenum -ne $n ]]
do
   # echo "How many files are there in this directory? "
    read -r n
    if [[ $n =~ ^[0-9]+$ ]]
    then
         if [[ $filenum -eq $n ]]
        then
          echo "Congratulations! You have guessed it correct!"
        elif [[ $filenum -gt $n ]]
        then
          echo "Your guess is too low. Please try again."
        else
          echo "Your guess is too high. Please try again."
        fi
    else
	echo "Invalid input!Please re-enter.."
    fi
done

