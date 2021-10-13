@echo off
setlocal enabledelayedexpansion

set  arrayline[0]= yourapp Hello bob. Hello steave.
set  arrayline[1]= yourapp Hello bob. hello steave.
set  arrayline[2]= yourapp Goodbay nikola2. goodbay nikola2
set  arrayline[3]= \s

set  array[0]= yourapp Hello bob. Hello steave.
set  array[1]= yourapp Hello steave.
set  array[2]= yourapp Goodbay nikola2. goodbay nikola2
set  array[3]= \ss

set  arrayTask[0]= task1.jar
set  arrayTask[1]= task2.jar
set  arrayTask[2]= task3.jar
set  arrayTask[3]= task4.jar
set  arrayTask[4]= task5.jar

set /A koll = 0


::read it using a FOR /L statement
for /l %%t in (0,1,4) do (
 echo ...................................................................
 echo Test !arrayTask[%%t]!
 echo ...................................................................

 for /l %%n in (0,1,3) do (
 echo ...................................................................
 echo PeredaeLLI: !arrayline[%%n]!
 echo.
 echo Poly4aeLLI:
 java -jar !arrayTask[%%t]! !arrayline[%%n]!
 echo.
 echo OjidaeLLI:
 java -jar !arrayTask[%%t]! !array[%%n]!
 echo.
 if !arrayline[%%n]! == !array[%%n]! (set /a koll = !koll! + 1
  echo Test vipolnen korrektno) else (echo Test vipolnen nekorrektno)
 )
)
echo Koli4estvo testov vipolnenih korrektno: !koll! iz 20
pause