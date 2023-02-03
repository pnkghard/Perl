package p1;

BEGIN{
    print "Initializing package variable text.\n";
    $text="Hello World";
}

$x = 12345;

sub sub1{
    print "$text\n";
}

END{
    print "Finished execution of:".__PACKAGE__."\n";
}

return 1;