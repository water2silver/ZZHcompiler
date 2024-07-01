#!/usr/bin/bash

APPFIX=""
WINOS=0

# OS类别
OSKind=$(uname -s)

# 机器位数
OS3264=$(uname -m)

OK_NUM=0
NG_NUM=0
# 单个测试用例测试
function dotestcase()
{
    CFILELIST=$(ls function/$1*.c)

    # 要查找的C文件名
    CFILE=""

    n=0
    for cfilename in $CFILELIST
    do
        CFILE=$cfilename
        n=$(expr $n + 1)
    done

    if [ $n -ne 1 ]; then
        return
    fi

    # 去掉C文件后缀，保留文件名
    TESTNAME=${CFILE%%.*}

    INFILE="${TESTNAME}.in"
    OUTFILE="${TESTNAME}.out"
    ASMFILE="${TESTNAME}.s"
    RESULTFILE="${TESTNAME}.result"
	# 生成汇编
    CMDNAME="../cmake-build-debug/calculator${APPFIX} -S -o ${ASMFILE} ${CFILE}"
    OUTSTR=$(eval ${CMDNAME} 2>&1)
    echo "${OUTSTR}" > ${RESULTFILE}
	# 检查汇编文件是否生成
    if [ ! -f ${ASMFILE} ]; then
        echo "${ASMFILE} asm not generated"
        return
    fi
	# 生成可执行文件
	CMDNAME="arm-linux-gnueabihf-gcc -static -g -o ${TESTNAME} std.c ${ASMFILE}"
	OUTSTR=$(eval ${CMDNAME} 2>&1)
    echo "${OUTSTR}" > ${RESULTFILE}

    if [ ! -f ${TESTNAME} ]; then
        echo "${TESTNAME} exe not generated"
        return
    fi

	CMDNAME="qemu-arm-static ${TESTNAME}"
    if [ -f ${INFILE} ]; then
        CMDNAME="${CMDNAME} < ${INFILE}"
    fi

    OUTSTR=$(eval ${CMDNAME} 2>&1)
    RUNRESULT=$?

    if [ -n "${OUTSTR}" ]; then
        OUTSTR="${OUTSTR}\n"
    fi

    if [ ${WINOS} -eq 1 ]; then
        echo -e "${OUTSTR}${RUNRESULT}" > ${RESULTFILE}
    elif [[ $OSKind == "Darwin" ]]; then
        echo "${OUTSTR}${RUNRESULT}" > ${RESULTFILE}
    else
        echo -e "${OUTSTR}${RUNRESULT}" > ${RESULTFILE}
    fi

    diff --strip-trailing-cr "${RESULTFILE}" "${OUTFILE}" > /dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "${CFILE} NG"
        NG_NUM=$(expr ${NG_NUM} + 1)
    else
        OK_NUM=$(expr ${OK_NUM} + 1)
        echo "${CFILE} OK"
        rm -f ${RESULTFILE}
        rm -f ${IRFILE}
		rm -f ${ASMFILE}
    fi
}

TestCaseNum_From=0
TestCaseNum_To=134

if [ $# -eq 1 ]; then
    TestCaseNum_From=$1
    TestCaseNum_To=$1
fi

if [ $# -ge 2 ]; then
    TestCaseNum_From=$1
    TestCaseNum_To=$2
fi

PlatformOS=$(uname -a)

if [[ ${PlatformOS} =~ "MINGW" ]] || [[ ${PlatformOS} =~ "MSYS" ]]; then
    APPFIX=".exe"
    OSKind="MINGW"
    WINOS=1
fi

for ((i = $TestCaseNum_From; i <= $TestCaseNum_To; i ++))
do
    TestCaseNo=$(printf '%03d' $i)
    dotestcase $TestCaseNo
done

echo "OK number=${OK_NUM}, NG number=${NG_NUM}"
#删除可执行文件
find ./function -type f -executable -exec rm {} +
