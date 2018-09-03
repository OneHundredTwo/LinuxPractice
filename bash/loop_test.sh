#!/bin/bash
#반복문 for, while, until

#반복문 빠져나갈때 : break
#현재 반복문이나 조건을 건너뛸때 : continue

array=("hello" "nice" "meet" "you")

#for
for string in ${array[@]}
do
	echo ${string}
done

#while
count=0
# -le == <
# 조건문 쓸때 대괄호 바로 안쪽에 공백 주의
while [ ${count} -lt ${#array[@]} ]
do
	echo ${count}
	echo ${array[count]}
	count=$(( ${count}+1 ))
done


#until : 수행 조건이 false일때 실행됨. 
count2=10
until [ ${count2} -le 5 ]
do
	echo ${count2}
	count2=$(( ${count2}-1 ))
done

# 안에 둥근괄호는 꼭 써야하나... 왜 두개일까. 하나쓰니까 오류가 뜨긴하는데
