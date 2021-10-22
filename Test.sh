declare -A arrayLine
declare -A array
declare -A arrayTask

arrayLine[0]=yourapp_Hello_bob._Hello_steave.
arrayLine[1]=yourapp_Hello_bob._hello_steave.
arrayLine[2]=yourapp_Goodbay_nikola2._goodbay_nikola2
arrayLine[3]=\s

array[0]=yourapp_Hello_bob._Hello_steave.
array[1]=yourapp_Hello_steave.
array[2]=yourapp_Goodbay_nikola2._goodbay_nikola2
array[3]=\ss

arrayTask[0]=task1.jar
arrayTask[1]=task2.jar
arrayTask[2]=task3.jar
arrayTask[3]=task4.jar
arrayTask[4]=task5.jar

koll=0

for t in ${arrayTask[@]}
do
 echo ...................................................................
 echo Test $t
 echo ...................................................................

 for n in 0 1 2 3
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
  ((koll+=1))
  echo Test vipolnen korrektno
 else 
  echo Test vipolnen nekorrektno
 fi

 done
done
echo Koli4estvo testov vipolnenih korrektno: $koll iz 20
read