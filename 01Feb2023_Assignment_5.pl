
#sum of all number given by command line input

$sum = 0;
foreach(@ARGV){
    $sum+=$_;
}
print "Addition of all numbers : $sum\n";