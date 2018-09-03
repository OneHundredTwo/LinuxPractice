#!/bin/bash

# 조건문
# if...elif...else..fi << fi가 종료
# 주의할점 : 실행문장이 없으면 오류가 발생한다.

string1="hello"
string2="world"

if [ ${string1} == ${string2} ]
then
	#실행문장이 없으면 오류발생함
	echo "hello world"
elif [ ${string1} == ${string2} ]
then
	echo "hello world 2"
else
	echo "hello world 3"
fi

#AND
#if [ ${string1} == ${string2} && ${string3} == ${string4} ]

#OR
#if [ ${string1} == ${string2} || ${string3} == ${string4} ]

#다중조건 ( == [
#if [[ ${string1} == ${string2} || ${string3} == ${string4} ] && [$string5} == ${string6}]]


#case문
# case variable in [variable이 일치하는거 1] ;; ... esac << esac가 case문 끝, ;;가 break 
array=("hello" "nice" "meet" "you")

for string in ${array[@]}
do
	case ${string} in
		hello|HELLO)
			echo "hello 일때"
			;;
		ni*)
			echo "ni로 시작하는 단어일때"
			;;
		m|meet)
			echo "m 또는 meet 일때"
			;;
		*)
			echo "${string}: 기타"
			;;
	esac
done
		
