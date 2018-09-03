#!/bin/bash
#bash에서 함수는 일반적인 고급언어에서의 함수와는 작성방식이 다릅니다
#bash에서의 함수 선언 및 매개변수 사용
#이럴거면 괄호는 왜 명시해야되는건지;
function e(){
	#첫번째 매개변수는 1, 두번째 매개변수는 2
	echo $1
	echo $2
}

#함수를 호출해서 매개변수를 넘기는 것은 '함수명 매개변수1 ...' 식으로 작성합니다
e hi my

#매개변수가 부족하면 공백으로 출력됩니다
e hi

#지금까지의 내용 자세히, 답변중에 변수이름으로 매개변수를 쓸 수 있다고 하긴 하는데, 솔라리스 개발자가 $1,$2 이런식으로 사용하는 이유가 있다고하니까 그냥 이렇게 쓰는걸로...
# https://code.i-harness.com/ko-kr/q/5eca7b

#함수의 반환값은 보통 다음과같이 합니다
function d(){
	local a="hihihi"
	echo $a
}

ret=`d`

echo $ret

#그 외 반환하는 방법 자세히
# https://zetawiki.com/wiki/Bash_%ED%95%A8%EC%88%98_%EB%B0%98%ED%99%98_%EA%B0%92_%EB%B0%9B%EA%B8%B0
