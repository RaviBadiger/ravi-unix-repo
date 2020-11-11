function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Less than the correct number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater than the correct number"
        else
            echo " Congratulations,you are correct!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory!"
guess
