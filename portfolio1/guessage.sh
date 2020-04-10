#!/bin/bash

#Name - Kye Hobbs
#Student ID - 10473319



#welcome message using echo command
echo "welcome to the age guessing application!"

#assigns a random integer to the variable 'RandAge'
#$RANDOM % 100 chooses an integer between 0 and 99 randomly
# +1 adds 1 to the random integer to make the random number between 1 and 100
RandAge=$[( $RANDOM % 100) +1]

# echo "$RandAge" - random variable assigns correctly so hashed out

#prompts user for input of an integer between 1 and 100
#assign value to the 'guess' variable.
read -p "My age is between 1 and 100. How old do you think I am? " guess

#echo "$guess" - user input assigns correctly to guess variable so commented out

#while loop used to create a continuous loop
#loop continues while 'guess' and 'RandAge' are not equal
while [ "$guess" -ne "$RandAge" ]; do

    #if 'guess' is greater than 'RandAge', informs user that the guess needs to be lower
    #prompts user to reattempt a guess and replace current 'guess' variable entry
    if [ "$guess" -gt "$RandAge" ]; then
        read -p "guess needs to be lower! Please try again: " guess

    #if 'guess' is lower than 'RandAge', inform user that guess needs to be higher
    #prompts user to reattempt a guess and overwrite the current 'guess' variable
    elif [ "$guess" -lt "$RandAge" ]; then
        read -p "guess needs to be higher! Please try again: " guess


    #close the if/else  statement   
    fi

#close the while loop
done

#if 'guess' variable equals 'RandAge' variable, congratulate user.
echo "Well done! you guessed my age! "

