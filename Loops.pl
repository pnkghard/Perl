$count=1;

#while loop until condition false
print "while loop run count upto 5 : \n";
while($count<=5){
    print $count."->";
    $count=$count+1;
}
print "End of loop....\n";

#until loop run until condition true
print "Until loop run count until 10 : \n";
until($count>10){
    print $count."->";
    $count=$count+1;
}
print "End of loop....\n";

#do-while run atleast ones
$count = 0;
print "do-while loop run atleast ones and upto 6 : \n";
do {
    $count = $count + 1;
    print $count."->";    
}while($count<=5);
print "End of loop....\n";

#do-until run atleast ones
print "do-until loop run atleast ones and count not greater than 11 : \n";
do {
    $count = $count + 1;
    print $count."->";    
}until($count>10);
print "End of loop....\n";