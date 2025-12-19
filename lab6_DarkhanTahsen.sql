#q1
#select count(*) from invoice

#q2
#select count(*) from customer where CUS_BALANCE>500

#q3
#P_DESCRIPT, LINE_UNITS, 
 #LINE_PRICE
#from customer natural join invoice natural join
#product natural join line
#order by CUS_CODE, INV_NUMBER, P_DESCRIPT

#q4
#select CUS_CODE, INV_NUMBER, INV_DATE,
 #P_DESCRIPT, LINE_UNITS, LINE_PRICE, LINE_UNITS*LINE_PRICE as SubTotal
#from customer natural join invoice natural join
#product natural join line
#order by CUS_CODE, INV_NUMBER, P_DESCRIPT
#q5

#select CUS_CODE, CUS_BALANCE,sum(LINE_UNITS*LINE_PRICE)
#from customer natural join invoice natural join product natural join line 
#group by CUS_CODE 

#q6
#select CUS_CODE, CUS_BALANCE,sum(LINE_UNITS*LINE_PRICE), count(P_CODE)
#from customer natural join invoice natural join product natural join line 
#group by CUS_CODE 

#q7
#select CUS_CODE, CUS_BALANCE,sum(LINE_UNITS*LINE_PRICE), count(P_CODE), 
#avg(LINE_UNITS*LINE_PRICE) as avg
#from customer natural join invoice natural join product natural join line
#group by CUS_CODE 

#q8
# INV_NUMBER, sum(LINE_UNITS*LINE_PRICE) as TOTALINVOICE
#from invoice natural join line
#group by INV_NUMBER

#q9
#select CUS_CODE, INV_NUMBER, sum(LINE_UNITS*LINE_PRICE) as Total
#from invoice natural join line natural join customer 
#group by INV_NUMBER
#order by CUS_CODE








