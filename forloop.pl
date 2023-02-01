#for loop
print "for loop upto 5 : \n";
for($count=1; $count<=5; $count++){
    print $count."->";
}
print "End of for loop....\n\n";

#foreach loop
print "foreach loop with range 1 to 5 : \n";
foreach $x(1..5){
    print $x."->";
}
print "End of foreach loop..\n\n";

#array
print "Array having course name with user define variable : \n";
@course = ("python", "perl", "linux", "os", "java");
foreach $c(@course){
    print $c.", ";
}
print "end of array print...\n\n";

print "Array having course name with pre define variable : \n";
foreach (@course){
    print $_.", ";
}
print "end of array print...\n\n";

#serial numbering
print "menu list : \n";
$len=@course;
for($count=0; $count<$len; $count++){
    print $count.".---->".$course[$count]."\n";
}
print "End of list....\n";