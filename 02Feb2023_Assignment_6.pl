#!/usr/bin/perl -w
# 6. accept few names from command line, display following menu
#     1. reverse --- reverse the string
#     2. count ---- display number of commandline arguments
#     3. display 2,3,4 th character of each string


@names = @ARGV;
$len = @names; #count of arguments


$ch = 0;
do{
    print "
                1. Reverse String
                2. Display number of Argument
                3. Display 2nd, 3rd, and 4rth Charcter of each String
                4. Exit\n
            Enter your choice :";
            $ch=<>;
        if($ch==1){
            print "\nReverse of all strings : \n";
            for($i=0; $i<$len; $i++){
                print scalar reverse("$names[$i]");
                print "\n";
            }            
        } elsif($ch==2){
            print "Number of Arguments : $len\n";
        } elsif($ch==3){
            print "2nd, 3rd, and 4rth character of each string :\n";
            for($i=0; $i<$len; $i++){
                print substr($names[$i], 1, 3);
                print "\n";
            }            
        } elsif($ch==4){
            print "Thanku for visit......\n";
        } elsif($ch==0){
            print "|-----------Welcome-----------|\n";
        } else{
            print "Wrong choice tray again.....\n";
        }
}while($ch!=4);

# print "Reverse of all strings : \n";
# for($i=0; $i<$len; $i++){
#     print scalar reverse("$names[$i]");
#     print "\n";
# }

# print "2nd, 3rd, and 4rth character of each string"
# for($i=0; $i<$len; $i++){
#     print substr($names[$i], 1, 3);
#     print "\n";
# }