print "enter 3 numbers : ";
$num=<>;

@num=split ' ',$num; #split from space 12 34 56

print $num[1]."\n";

$wrd=<>; #this is cdac, make it home;
@wrds=split " ",$wrd;

$len = @wrds;

print "length : $len";
print "length".@wrds;

$len=scalar(@wrds);
print "length : $len";


$s=join",",@wrds;
print$s;