# print
# 1
# 12
# 123
# 1234
# 12345


$num = 5;

for($i=0; $i<$num; $i++){
    for($j=0; $j<$num; $j++){
        if($j<=$i){
            print $j+1;
        } else {
            print " ";
        }
    }
    print "\n";
}