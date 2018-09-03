#!/bin/bash
# 예약변수 목록, 글로벌 환경변수
function e(){
	echo $1
}
#사용자의 홈 디렉터리
e $HOME
#실행 파일(bin)을 찾을 경로
e $PATH
#프로그램 사용시 기본 지원되는 언어
e $LANG
#사용자의 현재 작업중인 디렉터리
e $PWD

