# print
# *
# **
# ***
# ****
# *****


$num = 5;

for($i=0; $i<$num; $i++){
    for($j=0; $j<$num; $j++){
        if($j<=$i){
            print "*";
        } else {
            print " ";
        }
    }
    print "\n";
}