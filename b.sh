#!/bin/sh
echo "Hello world"

str="Hello world"

echo $str


#!/bin/sh
read n1
i=1
while [ $i -le $n1 ]
do
    echo "hello world"
    i=`expr $i + 1`
done
exit 0


#!/bin/sh
echo -e"두개의 수를 입력하세요: \c"
read n1 n2
echo "입력힌 숫자: "$n1", "$n2""

add=`expr $n1 + $n2`
minus=`expr $n1 - $n2`

echo "$n1 + $n2 = $add"
echo "$n1 + $n2 = $minus"


#!/bin/sh
echo -e"키와 몸무게를 입력하세요: \c"
read n1 n2
echo "입력한 숫자: "$n1", "$n2""

bmi=`expr $n2 / $n1 \* $n1`

if [ ${bmi} -lt 18.5 ]
then
    echo "저체중입니다."
elif [ ${bmi} -lt 25 ]
then
    echo "정상입니다."
elif [ ${bmi} -lt 30 ]
then
    echo "경도 비만입니다."
elif [ ${bmi} -lt 35 ] 
then
    echo "중도 비만입니다."
else
    echo "고도 비만입니다."
fi
exit 0


#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer
case $answer in
    yes | y | Y | Yes | YES)
        echo "다행입니다."
        echo "더욱 열심히 하세요";;
    [nN]*)
        echo "안타깝네요. ㅠㅠ";;
    *)
        echo "yes 아니면 no만 입력했어야죠"
        exit 1;;
esac
exit 0


#!/bin/sh
myfun (){
    echo "함수 안으로 들어 왔음"
    ls
    return
}
echo "프로그램을 시작합니다."
myfun
echo "프로그램을 종료합니다."
exit 0


#!/bin/sh
if [ ! -f files.txt ]; then

    touch file0.txt;
    touch file1.txt;
    touch file2.txt;
    touch file3.txt;
    touch file4.txt;
    ls
    xz file0.txt;
    xz file1.txt;
    xz file2.txt;
    xz file3.txt;
    xz file4.txt;    
fi
