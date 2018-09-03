#!/bin/bash
# 특수 매개변수
# 현재 스크립트의 PID
echo $$
# 최근에 실행된 명령어,함수, 스크립트 자식의 종료상태
function e(){
	echo "e function excuted"
}
e
echo $?

# 최근에 실행한 백그라운드(비동기)명령의 PID
echo $!

# 현재 옵션 플래그
echo $-

# 지난 명령의 마지막 인자로 설정된 특수변수
echo $_

