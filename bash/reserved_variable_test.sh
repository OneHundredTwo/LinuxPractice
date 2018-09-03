#!/bin/bash
# 예약변수 목록, 글로벌 환경변수
function E(){
	echo $1
}
#사용자의 홈 디렉터리
E $HOME
#실행 파일(bin)을 찾을 경로
E $PATH
#프로그램 사용시 기본 지원되는 언어
E $LANG
#사용자의 현재 작업중인 디렉터리
E $PWD
#현재 함수 이름
E $FUNCNAME
#스크립트가 실행된 초 단위 시간
E $SECONDS
#쉘 레벨(중첩된 깊이를 나타냄)
E $SHLVL
#로그인해서 사용하는 쉘
E $SHELL
#부모프로세스의 PID
E $PPID
#실행 파일 경로
E $BASH
#스크립트 실행시 BASH 시작 파일을 읽을 위치변수
E $BASH_ENV
#설치된 BASH 버전
E $BASH_VERSION
#배열로 BASH 상세정보 제공(0~5), 배열이랬는데 출력해보니 배열이아님
E $BASH_VERSINFO
E ${BASH_VERSINFO[0]}
E ${BASH_VERSINFO[1]}
E ${BASH_VERSINFO[2]}
E ${BASH_VERSINFO[3]}
E ${BASH_VERSINFO[4]}
E ${BASH_VERSINFO[5]}

#메일 보관 경로
E $MAIL
#메일 확인 시간
E $MAILCHECK
#운영체제 종류
E $OSTYPE
#로긴 터미널 타입
E $TERM
#호스트이름
E $HOSTNAME
#시스템 하드웨어 종류
E $HOSTTYPE
#머신 종류(HOSTTYPE과 같은정보지만 좀 더 상세하게 표시)
E $MACHTYPE
#로그인 이름
E $LOGNAME
#사용자 UID
E $UID
# su명령에서 사용하는 사용자의 유효 아이디 값(UID와 EUID는 다를 수 있음)
E $EUID
#사용자의 이름
E $USER
#사용자의 이름 2
E $USERNAME
#사용자 그룹(/etc/passwd 값을 출력)
E $GROUPS
#history 파일 경로
E $HISTFILE
#history 파일 크기
E $HISTFILESIZE
#history 저장되는 갯수
E $HISTSIZE
#중복되는 명령에 대한 기록 유무
E $HISTCONTROL
#X디스플레이 이름
E $DISPLAY
#입력 필드 구분자(기본값 : 공백문자)
E $IFS
#VISUAL 편집기 이름 
E $VISUAL
#기본 편집기 이름
E $EDITOR
#현재 터미널이나 윈도우 터미널의 컬럼 수
E $COLUMNS
#터미널의 라인 수
E $LINES
#LS 명령의 색상 관련 옵션
E $LS_COLORS
#기본 프롬프트 변수(기본값 : BASH\$)
E $PS1
#보조 프롬프트 변수(기본값 : >), 명령을"\"를 사용하여 명령 행을 연장시 사용됨
E $PS2
#쉘 스크립트에서 SELECT 사용시 프롬프트 변수(기본값: #?)
E $PS3
#쉘 스크립트 디버깅모드의 프롬프트 변수(기본값 :+)
E $PS4
#0이면 제한이 없으며 TIME 시간 지정시 지정한 시간 이후 로그아웃
E $TMOUT
