#!/bin/bash
# bash도 함수가 있고, 지역변수, 전역변수 개념이 있음.
CHARERS="bash script test global variable"
# 예제에는 괄호가 없었는데, 괄호가 없으니 문법에러발생.
function locals(){
# 지역변수를 선언하려면 local키워드를 명시한다
	local CHARERS="bash script test local variables"
	echo $CHARERS
}
echo $CHARERS
# 정의한 함수 호출(특이하다)
locals
echo $CHARERS
