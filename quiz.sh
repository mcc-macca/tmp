#!/bin/bash
quiz() {

      echo "inizo quiz..."
      random1=$(($RANDOM / 100))
      random2=$(($RANDOM / 100))
      result=$(($random1 + $random2))
  
      echo "Risultato di $random1 + $random2?"
     read response
     if [ "$response" == $result ]
     then
       echo "Hai vinto."
     else 
       echo "risposta incorretta."
     fi
   }

   echo "iniziare quiz? (y/n)"
   read response
   if [ "$response" == "y" ] || [ "$response" == "Y" ]
   then 
     SECONDS=0
     quiz
    echo "hai impiegato $SECONDS secondi per completare il quiz."
   else 
     echo "uscita..."
   fi
