#!/bin/bash
# 최근 bash에서는 배열을 지원함
varr[0]="bash"
varr[1]="script"
varr[2]="array"
varr[3]="test"

echo ${varr[0]}
echo ${varr[1]}
echo ${varr[2]}
echo ${varr[3]}


#배열 변수 사용은 반드시 괄호를 사용해야한다
#안그러면 $arr[1] 은 arr[1]을 출력한다
#참고) 1차원배열만 지원함

#배열의 크기 지정없이 배열 변수로 선언
#declare -a 명령이 아니더라도 배열변수 사용 가능하다.
declare -a array

array=("hi" "every" "body" "nice")

#기존 배열에 한개의 배열값 추가(순차적으로 입력할 필요 없음)
array[5]="variable"
echo "중간에 건너뛴 4번 인덱스 참조 : " ${array[4]:-"비어있음"}
echo "5번 인덱스 참조 : " ${array[5]:-"비어있음"}

#기존 배열 전체에 1개의 배열 값을 추가하여 배열 저장(배열 복사시 사용)
array=(${array[@]} "string")

#위에서 지정한 배열 출력
echo ${array[0]} ${array[3]}
#배열 전체 출력
echo ${array[@]}
#배열 전체 갯수 출력
echo ${#array[@]}

# 비어있는 인덱스는 넘어감, 배열을 넣으면 반복함
printf "printf로 배열출력 : %s\n" ${array[@]}

#배열의 특정 요소만 지우기
unset array[4]
echo "배열 전체 출력 : ${array[@]}"

#배열 전체 지우기
unset array
echo "배열 전체 출력 : ${array[@]}"

#이상하네, 길이는 6인데, 참조할땐 중간에 null인 인덱스는 무시하고, 참조할 수 있는 녀석들만 빈공간없이 참조하나보다.
#위에 unset array[5] 를 했더니 variable이 안지워지고 array[4]로했더니 지워짐
