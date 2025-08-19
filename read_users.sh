#!/bin/bash 

datafile="data.csv"


while read line;
    do 
        # echo $line;

        if [[ $line == "Firstname,Lastname,Email,Username,Password" ]]
        then 
            echo "Ignoring the headers ..." 
        else 
            firstname=$(echo $line | cut -d "," -f1 )
            lastname=$(echo $line | cut -d "," -f2)
            email=$( echo $line | cut -d "," -f3)
            username=$( echo $line | cut -d "," -f4)
            password=$( echo $line | cut -d "," -f5)


            sudo useradd $username 

            echo "$username:$password" | sudo chpasswd

        fi  
done < $datafile