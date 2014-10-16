#! /bin/bash
#List version numbers of critical developments tools

set -e

export LC_ALL=C
bash  --version | head -n1 | cut -d" " -f2-4
echo "/bin/sh -> 'readlink -f /bin/sh'"
echo -n "Binutils: "; ld --version | head -n1 | cut -d" " -f3-bison --version | head -n1
if [ -e /usr/bin/yacc ];
    then echo "/usr/bin/yacc -> 'readlink -f /usr/bin/yacc'";
    else echo "yacc not found";
fi

bzip2 --version
diff --version | head -n1
find --version | head -n1
gawk --version | head -n1
if [ -e /usr/bin/awk ];
    then echo "/usr/bin/awk -> 'readlink -f /usr/bin/awk'";
    else echo "awk not found";
fi

gcc --version | head -n1
g++ --version | head -n1
ldd --version | head -n1
grep --version | head -n1
gzip --version | head -n1
cat /proc/version
m4 --version | head -n1
make --version | head -n1
patch --versin | head -n1
echo Perl 'perl -V:version'
sed --version | head -n1
tar --version | head -n1
xz --version | head -n1
echo 'main(){}' > dummy.c && g++ -o dummy dummy.c
if [ -x dummy ]
    then echo "g++ compilaction OK";
    else echo "g++ compilation failed";
fi
