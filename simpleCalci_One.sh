echo "Enter an arithmetic operation:"
read op
function simpleCalci() {
    if [[ "$op =~ [-+]?[0-9]+ [-+]?[0-9]+$" ]]; then 
           bc -l <<< "$op"\
    else 
           echo 'Operation check failed!'
    fi
}
simpleCalci
