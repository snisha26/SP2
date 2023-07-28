#!/bin/bash

display_chessb() 
{
    
    for((i = 1; i <= 8; i++)); do
        for((j = 1; j <= 8; j++)); do
            if (( (i+j) % 2==0 ));then
                echo -ne "\e[47m "
            else
                echo -ne "\e[40m "
            fi
        done
        echo -e "\e[0m "
    done    
}
display_chessb
