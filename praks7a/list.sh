#!/bin/bash
#
#kaustaylevaade
#
#skripti algus
#f=0
#link=0
#d=0
cd ./
 for i in `ls`
 do
   if test -L $i; then
     link=$(($link+1))
     echo $i: link
 elif test -f $i; then
     f=$(($f+1))
     echo $i: fail
 elif test -d $i; then
     d=$(($d+1))
     echo $i: kataloog
 fi
 done
echo "Selles kataloogis on $f failid, $d kataloogid ja $link linkid."
#
#skripti lopp
