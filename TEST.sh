sdeclare -A arrayLine
declare -A array
declare -A arrayTask

arrayLine[0]=yourapp_Hello_bob._Hello_steave.
arrayLine[1]=/s

array[0]=yourapp_Hello_bob._Hello_steave.
array[1]=/s

arrayTask[0]=task1.jar
arrayTask[1]=task2.jar
arrayTask[2]=task3.jar
arrayTask[3]=task4.jar
arrayTask[4]=task5.jar

koll_true=0
koll_false=0

for t in ${arrayTask[@]}
do
 echo ...................................................................
 echo Test $t
 echo ...................................................................

 for n in 0 1
 do

 echo ...................................................................
 echo PeredaeLLI: ${arrayLine[$n]}
 echo
 echo Poly4aeLLI:
 java -jar $t ${arrayLine[$n]}
 echo
 echo OjidaeLLI:
 java -jar $t ${array[$n]}
 echo

 if [ ${array[$n]} = ${arrayLine[$n]} ]; then
  ((koll_true+=1))
  echo Test vipolnen korrektno
 else
  ((koll_false+=1))
  echo Test vipolnen nekorrektno
 fi

 done
done
echo Koli4estvo testov vipolnenih korrektno: $koll_true, nekorrektno: $koll_false

if [ $koll_false != 0 ]; then
  exit 1
fi