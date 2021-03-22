BEGIN{
	FS=","
	Icount=0
FCylinders=0
TCost=0
}{
if($4 <=30000) {Icount+=1}
if($6 == 4 && $5=="hybrid") {FCylinders+=1}
if($6 == 4 && $5=="hybrid") {TCost+=$4}
}
END{
print "inexpensive count = " Icount
print "average = " TCost/FCylinders

	}
