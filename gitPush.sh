#! /usr/bin/bash
BCyan='\033[1;36m'
Color_Off='\033[0m'

var=$(git status --short 2>&1)
var2=""
if ["$var" = "$var2"];then 
echo -e "${BCyan}Nothing to commit${Color_Off}"
exit 0
fi
if ["$1" = "$var2"];then
echo -e "${BCyan}Provide commit message${Color_Off}"
exit 0
fi
changes=$(git add .)
echo -e "${BCyan}All changes have been added${Color_Off}"

echo -e "${BCyan}Commiting with the message: $1${Color_Off}"
commitMsg=$(git commit -m "$1")

echo -e "${BCyan}Commited successfully${Color_Off}"

git push -u origin main
echo -e "${BCyan}PUSH SUCCESSFULL${Color_Off}"


