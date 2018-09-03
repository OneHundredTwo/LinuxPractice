#!/bin/bash
# 변수에 할당은 변수명=값 으로 수행되며, =양옆에 공백이 있으면 안된다
# 변수의 종류는 환경변수(export), 쉘스크립트 전역변수, 지역변수(함수내 local) 세가지가 있다.
# 전역변수 지정
string="hello world"
echo $string

# 지역 변수 테스트함수
function string_test(){
	# 만약 local을 뺀다면 전역변수에 덮어씌어지게됨
	local string="local"
	echo $string
}

# 지역변수 테스트 함수 호출
string_test

#지역 변수 테스트 함수에서 동일한 변수 명을 사용했지만 값이 변경되지 않음
echo $string

#환경 변수 선언
export hello_world="hello world..."
#자식 스크립트 호출은 스크립트 경로를 쓰면 된다.
./export_test.sh

#환경 변수를 테스트하기 위해 export_test.sh파일을 만들고 선언한 변수를 확인한다
# export_test.sh 의 내용 -> echo ${hello_world}
