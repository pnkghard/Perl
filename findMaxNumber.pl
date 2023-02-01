$n1 = <STDIN>;
$n2 = <>;
$n3 = <>;

if($n1>$n2 && $n1>$n3 && $n2>$n3){
    print "$n1 is gretest and $n3 lowest\n";
} elsif($n2>$n3 && $n2>$n1 && $n3>$n1){
    print "$n2 gretest and $n1 is lowest\n";
} elsif($n3>$n2 && $n3>$n1 && $n2>$n1){
    print "$n3 gretest and $n1 is lowest\n";
}