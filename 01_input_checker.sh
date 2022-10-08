# The input_checker script has to check the inputs passed to the script and it has to:
# 1. Only allow 2 arguments. Abort otherwise.
# 2. Argument #1 must be an app name. Allowed values are ONLY: order, payment, login. Abort otherwise.
# 3. Argument #2 must be a number between 1 and 10. Abort otherwise.

#!/bin/bash

set -e
if [ $# -lt 3 ]; then
        echo "$1 is having valid # of arguments"
        else echo "$1 is having more than 3 arguments"
        fi
        if [ "$fname" == "order" ] |  [ "$fname" = "payment" ] | [ "$fname" = "login" ]; then
        echo "arguments have valid name"
        fi
        if [ $2 -gt 1 ] && [ $2 -lt 10 ]; then 
                echo "success" else
                    echo "failure"
                    fi
