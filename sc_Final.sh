#!/bin/bash

echo "Welcome to the basic calculator!"

#A text file which stores all logs,inputs and outputs
touch operation_history.txt
function simpleCalci() {
    while [[ $op != "quit" ]]; do
           echo "Enter an arithmetic operation or type 'quit' to quit:" | tee -a operation_history.txt
           read op
           op | tee -a operation_history.txt
       if [[ "$op =~ [-+]?[0-9]+ [-+]?[0-9]+$" ]]; then 
              bc -l <<< "$op" >> operation_history.txt
          
       else 
              echo 'Operation check failed!' | tee -a operation_history.txt
       fi
    done
    echo 'Goodbye!' | tee -a operation_history.txt
}
simpleCalci
