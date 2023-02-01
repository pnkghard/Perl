#command line input

print "Command line input : \n";
foreach (@ARGV){
    print $_."->";
}
print "end cli input....\n";