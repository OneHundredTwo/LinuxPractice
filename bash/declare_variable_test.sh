#!/bin/bash

#변수 타입 지정
#다른 스크립트언어처럼 bash 변수는 타입을 구분하지 않고 기본적으론 문자열인데, 문맥에따라 자동연산한다.
#그런데 불완전한 형태의 declare, typeset 타입 지정명령을 지원한다.(동일기능)
#불완전하므로 알기만하고 다른문법사용을 추천.(주석에 동치되는 문법)
# 읽기 전용
# readonly string_variable="hello world" 문법과 동일 함
declare -r string_variable

# 정수
# number_variable=10 문법과 동일 함
declare -i number_variable=10

# 배열
# array_variable=() 문법과 동일 함
declare -a array_variable

# 환경 변수
# export export_variable="hello world" 문법과 동일 함
declare -x export_variable="hello world"

# 현재 스크립트의 전체 함수 출력
declare -f

# 현재 스크립트에서 지정한 함수만 출력
declare -f 함수이름


