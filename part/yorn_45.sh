#/bin/bash

read -p "yes or no! this is a question :" answer

if [[ "$answer" =~ ^(no|n|NO|N|No|nO|y|Y|YES|YEs|Yes|yes|yES|yeS|YeS|yEs)$ ]] ;then
true
echo "you have inputed $answer !"
else 
echo "just input (y|yes|no|n|NO|N|Y|YES) ,is this difficult ?" 
fi
unset 
