open(rd, "<", "empdata.txt");

# $sum=0;

# while(<rd>){
#     @arr=split ":",$_;
#     if($arr[2] eq "SW"){
#         $sum += $arr[3];
#     }
#     print $_;
# }
# print "\nTotal : $sum\n";

%dep=();
while(<rd>){
    @emp=split ":",$_;
    if(exists($dep{$emp[2]})){
        $dep{$emp[2]}=$dep{$emp[3]}+$emp[3];
    } else{
        $dep{$emp[2]}=$emp[3];
    }
}
close rd;

print "$k--->$v\n" while(($k, $v)=each %dep);