#!/bin/bash

#매개 변수 확장 : 매개변수를 가공하는 표현식 ex)문자열 절삭 등
function e(){
	echo $1
}

#헷갈리지 말것! 변수 원본은 그대로이고, 변수의 값만 받아서 가공한 인스턴스를 리턴하는 것임. JAVA로 따지면 String 객체의 메서드가 새 String 인스턴스를 생성해서 반환하는 것처럼.

s="abc-efg-123-abc"

# $변수와 동일하지만 {}로 감싸줘야만 동작하는 것들이 있다, 매개변수 확장에 기본
e ${s}

# 위치 다음부터 문자열 추출, == substr(startindex+1)
e ${s:4}

# 위치 다음부터 지정한 길이만큼 문자열 추출 == substr(startindex+1, startindex+1+length)
e ${s:4:3}

# 변수 미선언 혹은 NULL일때 기본값 지정, 위치 매개변수($1,$2...)는 사용불가, 이경우엔 HELLO가 출력, 변수가 자동으로 선언되는게 아니고, 없으면 대체로 출력되는 것. 
string11=STRING11
e ${string1:-HELLO}
e ${string11:-HELLOO}

#변수 미선언시만 기본값 지정, 위치 매개변수는 사용 불가
string22=STRING22
e ${string2-HELLO}
e ${string22=HELLOO}

#변수 미선언 혹은 NULL일때 기본값 지정, 위치 매개변수 사용가능 => 안된다는데?
# 참고 https://www.labri.fr/perso/strandh/Teaching/USI/Common/Bash/bashref_29.html
string33=STRING33
e ${string3:=HELLO}
e ${string33:=HELLOO}
#function d(){
#	e ${1:=HI}
#}
#d

#변수 미선언 혹은 NULL일때 단어 출력후 스크립트 종료, 변수선언되어있으면 변수내용출력.
e ${s:?END_CAUSE_NO_DECLARE}
# e ${string:?STRING_END}
# 이렇게 출력되고 종료됨.
# ./parameter_expansion_test.sh: line 41: string: STRING_END

#변수 미선언시만 단어 출력 후 스크립트 종료
e ${s?END_CUASE_NO_DECLARE}

#변수 선언시에만 단어 사용(인스턴스출력)
e ${s:+HELLO}
e ${string:+HELLO}

#변수 선언 혹은 NULL일때 사용
e ${s+HELLO}

#문자열 길이 , 혹은 배열길이
e ${#s}

#변수의 앞부분부터 짧게 일치한 단어 삭제해서 반환
e ${s#a*b}
#변수의 앞부분부터 길게 일치한 단어 삭제해서 반환
e ${s##a*b}
#변수의 뒷부분부터 짧게 일치한 단어 삭제해서 반환
e ${s%b*c}
#변수의 뒷부분부터 길게 일치한 단어 삭제해서 반환
e ${s%%b*c}

#처음 일치한 단어를 변경
e ${s/abc/HELLO}

#일치하는 모든 단어를 변경
e ${s//abc/HELLO}

#앞부분이 일치하면 변경
e ${s/#abc/HELLO}

#뒷부분이 일치하면 변경
e ${s/%abc/HELLO}

#선언된 변수 중에서 단어가 포함된 변수 명 추출
# ${!단어*}, ${!단어@}
# 출력 안되는데...
CLANG=c
PYLANG=py
e ${!LANG*}
e ${!LANG@}
