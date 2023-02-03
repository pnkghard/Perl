package Mathtest;
our ($pi, $e);
$pi = 3.14159;
$e = 2.7182818;
sub circle_area{
    my $radius = shift;
    return ($pi * $radius * $radius);
}