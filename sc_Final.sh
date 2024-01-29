#!/bin/bash

echo "Welcome to the basic calculator!"

function simpleCalci() {
    while [[ $op != "quit" ]]; do
           echo "Enter an arithmetic operation or type 'quit' to quit:"
           read op
       if [[ "$op =~ [-+]?[0-9]+ [-+]?[0-9]+$" ]]; then 
              bc -l <<< "$op"
          
       else 
              echo 'Operation check failed!'
       fi
    done
    echo 'Goodbye!'
}
simpleCalci
