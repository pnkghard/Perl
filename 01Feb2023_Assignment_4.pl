#find city in list
@cities = ("Pune", "Mumbai", "Nagpur", "Bhandara", "Indore");

print "City name : ";
$name=<>;
chomp($name);
foreach(@cities){
    if($name eq $_){
        print "$name present in list\n";
        exit;
    }
}
print "$name not present in list...\n";