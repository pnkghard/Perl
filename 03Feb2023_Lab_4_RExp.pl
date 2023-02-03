$str="somethings is there somewhere";

#first ocurence of s & e
print "first ocurence of s & e\n";
if($str=~m/s(.*?)e/gi){#g for global and i for ignore case sensitivity and m for match
    print "found\n";
    print $1."\n";
} else{
    print "not found\n";
}

#last occurance of s & e
print "last occurance of s & e\n";
if($str=~m/s(.*)e/gi){ #g for global and i for ignore case sensitivity and m for match
    print "found\n";
    print $1."\n";
} else{
    print "not found\n";
}


# #print matches
# $str1="Characters can be grouped into character class and the class matches one character inside it";
# if(str1 =~ m/be(.*?)the/gi){
#     print $1;
# }

$str = "KLFS Computer Systems - 13";
if ($str =~ m/\D/) {
    print "\n Found Non-digit Character";
} else{
    print "\n Found Digit Character";
}
$str = "25345";
if ($str =~ m/\D/) {
    print "\n Found Non-digit Character";
} else{
print "\n Found Digit Character\n";
}

$str = "KLFS Computer Systems - 13";
if ($str =~ m/\d/) {
    print "\n Found Digit Character";
} else{
    print "\n Found Non-digit Character";
}
$str = "25345";
if ($str =~ m/\d/) {
    print "\n Found Digit Character";
} else{
    print "\n Found Non-digit Character"; 
}

$str = "KLFS Computer Systems - 13";
if ($str =~ m/\s/) {
    print "\nFound White space Character";
} else{
    print "\nFound No White space Character";
}
$str = "25345";
if ($str =~ m/\s/) {
    print "\nFound White space Character";
} else{
    print "\nFound No White space Character\n";
}

$str = "KLFS Computer Systems - 13";
if ($str =~ m/\w/) {
    print "\nFound Word\n";
} else{
    print "\nFound Special Characters\n";
}
$str = "**\\!";
if ($str =~ m/\w/) {
    print "\nFound Word\n";
} else{
    print "\nFound Special Characters\n";
}


$str = "KLFS Computer Systems _ 13";
if ($str =~ m/[aeiou]/) {
    print "There are vowels\n";
} else {
    print "There are no vowels\n";
}
$str = "Hw W'll";
if ($str =~ m/[aeiou]/) {
    print "There are vowels\n";
} else {
    print "There are no vowels\n";
}

$str = "KLFS Computer Systems _ 13";
if ($str =~ m/[0-9]/)
{
    print "\nThe string contains numerals\n";
}
else
{
    print "There are no numerals within the string\n";
}

$str = "KLFS Computer Systems _ 13";
if ($str =~ m/(KLFS|klfs|Klfs)/)
{
    print "\nThe string contains the word klfs\n";
}
else
{
    print "The string does not contain the word klfs\n";
}

$_ = "Academy Of KLFS Computers is located in Thane, Mumbai, Maharashtra,India.";
if ( /Of (.*),/ )
{
    print "$1\n";
}