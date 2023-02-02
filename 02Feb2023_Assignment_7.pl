#!/usr/bin/perl

# 7. store courses and number of students in each course,
#     1. display only course names
#     2. display all courses with number of participants > 50
#     3. display all courses with length >4
#     4. exit

%courses=("HPCAP"=>28, "DAC"=>240, "HPCSA"=>70);

#course having strenth more than 50
sub printCoures50{
    while(($k, $v)=each %courses){
        if($v>50){                
            print "$k ---> $v\n";
        }
    }
}

#course name having length more than 4
sub printLength{
    foreach $k(%courses){
        if(length($k)>4){
            print "$k\n";
        }
    } 
}

print "\n...Student Database System....\n";

#main driven function
do{
    print "
            1. Display all course
            2. Course having more than 50 participent
            3. Display course having length greater than 4
            4. Exit\n
        Enter your choice : ";
    $ch = <>;
    if($ch==1){
        print "\nCourse Availabel :\n";
        print "$_\n" for keys %courses;
    } elsif($ch==2){
        print "\nCourses which having perticipent more than 50 :\n";
        printCoures50;
    } elsif($ch==3){
        print "\nCourses having length greater than 4 :\n";
        printLength;       
    } elsif($ch==4){
        print "\nThanks you! and visit again.....\n";
    }      
} while($ch!=4);