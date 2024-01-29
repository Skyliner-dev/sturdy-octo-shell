#!/usr/bin/env bash

echo "Welcome to the basic calculator!"

function simpleCalci() {
    echo "Enter an arithmetic operation or type 'quit' to quit:"
    read op
    if [[ "$op =~ [-+]?[0-9]+ [-+]?[0-9]+$" ]]; then 
           bc -l <<< "$op"
    else 
           echo 'Operation check failed!'
    fi
}
simpleCalci()
