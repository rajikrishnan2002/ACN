while [ true ]
do
echo enter 2 numbers
read a
read b
echo select the operation to be performed
echo 1.addition
echo 2.substraction
echo 3.multiplication
echo 4.division
echo 5.exit
read d
case $d in
1) echo -n "sum ="
c=`echo $a + $b | bc`
echo $c;;
2) echo -n "difference ="
c=`echo $a - $b | bc`
echo $c;;
3) echo -n "product ="
c=`echo $a \* $b | bc`
echo $c;;
4) echo -n "quotient ="
c=`echo $a / $b | bc`
echo $c;;
5) exit;;
*)
break;;
esac
done
