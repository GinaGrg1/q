//Create Table
//Creating column. 10 mil dates between 0 & 31
dates:2018.01.01+10000000?31;

//10 mil random times between midnight
times:10000000?24:00:00.000;

//Give me 10 mil random numbers between 0 & 100
qtys:100*10000000?100;

ixs:10000000?3;
syms:`appl`amzn`googl ixs;
pxs:(1+10000000?.03)*172.0 1189.0 1073.0 ixs

t:([] `date:dates; `time:times; `qty:qtys; `px:pxs)

//Sort the table by date & time
t:`date`time xasc t

5#t
date       time         sym   qty  px
-------------------------------------------
2018.01.01 00:00:00.183 appl  3700 172.9875
2018.01.01 00:00:00.923 googl 7100 1099.698
2018.01.01 00:00:01.506 googl 3700 1085.8
2018.01.01 00:00:01.686 googl 7000 1084.319
2018.01.01 00:00:01.803 googl 1200 1077.715
