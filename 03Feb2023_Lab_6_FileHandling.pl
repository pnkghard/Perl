

#file Handeling

open(rd, "<", "testr.txt"); #read file
open(rw, ">", "testw.txt"); #write file
while(<rd>){
    print rw $_;
} 
close rd;
close rw;


open(rd, "<", "testr.txt");
open(rw, ">>", "testa.txt"); #append in file
$count = 0;
while(<rd>){
    $count++;
    print rw $count.".".$_;
} 
print rw "hello World!";
close rd;
close rw;