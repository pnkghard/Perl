#sum of 9+99+999+9999+...... upto user define digits.

print "Enter 9th digits : ";

$num = <>;
$sum = 0;
$nine = 9;
$count = 0;

do{
    $sum+=$nine;
    $nine=$nine*10 + 9;
    $count++;
} while($count<$num);

print "\nsum of 9+99+999+9999+...=$sum\n"