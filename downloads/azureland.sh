#!/bin/bash 

echo "AZURE LAND"

echo "Welcome, player.  choose your class:
1 - vessel
2 - prisoned
3 - knight"

read class

case $class in

	1)
		type="vessel"
		hp=13
		atk=24
		;;
	2)
		type="prisoned"
		hp=20
		atk=19
		;;
	3)
		type="knight"
		hp=27
		atk=26
		;;
esac

echo "you chose the $type class. your hp is $hp and your attack is $atk."


#first battle

creature=$(( $RANDOM % 2 ))

echo "SOMETHING APPROACHES, WHAT ATTACK DO YOU USE, 1 OR 0."

read attack
if [[ $creature == $attack || $attack == 772  ]]; then
	echo "you beat it! what, you want me to award you? its not like you beat the final boss and i dont even have anything"
else
	echo "You Died."
	exit 1
fi

#second battle

sleep 4
echo "THERE IS ANOTHER"

creature2=$(( $RANDOM % 5 ))

echo "SOMETHING APPROACHES, WHAT ATTACK DO YOU USE, 4 THROUGH 0."

read attack2
if [[ $creature2 == $attack2 || $attack2 == "youcantguessthischeatcodelmaooo" ]]; then
        echo "you beat it! no im not rewarding you"
else
        echo "You Died."
	exit 1
fi

#Final boss
sleep 2

echo "FINAL BOSS APPROACHES"

creature3=$(( $RANDOM % 11 ))

read attack3
if [[ $creature3 == $attack3 && $RANDOM -gt 1000 || $attack3  == qwertyuioppasdfghjklzxcvbnmmnbvcxzlkjhgfdsapoiuytrewq12345678900987654321 ]]; then
        echo "wow, you beat this game, well what will you do now? and no i will still not reward you i dont even have anything"
else
        echo "You Died"
	exit 1
fi
sleep 3
echo "AZURE LAND

P - Play Again
O - Options
E - Exit"

read menuinput

case $menuinput in

	P)
		echo "currently working on replaying! reopen ./azureland.sh for replaying!"
		;;
	O)
		echo "options: there arent any, they are being worked on though"
		;;
	E)
		exit 1
		;;
esac
