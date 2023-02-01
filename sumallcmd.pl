#find sum of all number greater than 5 and divisible by 3 (arg by cli)

$sum=0;

foreach $s(@ARGV){
    if($s>5 && $s%3==0){
        $sum = $sum + $s;
    }
}

print $sum."\n";