#!/bin/bash

#პროგრამის ავტორი: გიო რგი
#https://YouTube.com/AnonymousFromGeorgia
#https://Github.com/AnonymousFromGeorgia
#https://Facebook.com/anonimaluri
#https://Twitter.com/anonimaluri
#http://anonymousfg.66ghz.com

dependencies() {

command -v figlet > /dev/null 2>&1 || { echo >&2 "პროგრამას გასაშვებად ესაჭიროება figlet ინსტალაცია. (bash ინსტალაცია.sh)"; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "პროგრამას გასაშვებად ესაჭიროება curl ინსტალაცია. (bash ინსტალაცია.sh)"; exit 1; }

}

figlet Coronavirus

echo "Coronavirus-Tracker კორონავირუსის ტრეკერი"
echo "-----------------------------------------------------------"
echo "https://github.com/AnonymousFromGeorgia/Coronavirus-Tracker"
echo "-----------------------------------------------------------"

PS3='გთხოვთ, აირჩიეთ პარამეტრი: '
options=("მსოფლიო" "საქართველო" "პროგრამის გათიშვა")
select opt in "${options[@]}"
do
    case $opt in
        "მსოფლიო")
            curl https://corona-stats.online/
            echo "დაიბანეთ ხელები ხშირად! https://stopcov.ge"
            break
            ;;
        "საქართველო")
            curl https://corona-stats.online/GE
            echo "დაიბანეთ ხელები ხშირად! https://stopcov.ge"
            break
            ;;
        "პროგრამის გათიშვა")
            break
            ;;
        *) echo "არასწორი პარამეტრი $REPLY";;
    esac
done

echo "--------------------------------------------------"
echo "პროგრამის ავტორი: გიო რგი"
echo "--------------------------------------------------"
echo "YouTube - https://youtube.com/AnonymousFromGeorgia"
echo "--------------------------------------------------"
echo "Github - https://github.com/AnonymousFromGeorgia"
echo "--------------------------------------------------"
echo "Facebook - https://facebook.com/anonimaluri"
echo "--------------------------------------------------"
echo "Twitter - https://twitter.com/anonimaluri"
echo "--------------------------------------------------"
echo "ანონიმუსი საქართველოდან - Anonymous From Georgia"
echo "--------------------------------------------------"
