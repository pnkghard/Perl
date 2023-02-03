#!/usr/bin/perl

package bookstore;

#book list
%books=("perl"=>100,"python"=>200);

#initializing package
BEGIN{
    print "\nInitializing package variable having books as list of having name of package".__PACKAGE__."\n";
}

#add new book
sub addnewbook{
    print "Enter book name :";
	$nm=<>;
	chomp($nm);
	if(exists($books{$nm})){
		print "Book already present...\n";
	} else {
		print "Eneter pages : ";
		$pg=<>;
		$books{$nm}=$pg;
	  	print "Book added successfully...\n";		
	}
}

#display all books
sub displayall{
	print "$_\n" for keys %books;
}

#all function parameters are received in a array @_
sub deletebyname($){
	$bnm=shift @_;
	chomp($bnm);
	if(exists($books{$bnm})){
		delete($books{$bnm});
		print "Book $bnm removed successfully....";
	} else{
		print "Book not found....";
	}
}

#modify pages
sub modifypages{
	print "Book Name : ";
	$name = <>;
	chomp($name);
	if(exists($books{$name})){
		print "Enter pages : "."\n";
		$pg=<>;
		$books{$name}=$pg;
		print "$name pages updated successfully";
	} else {
		print "Book not presesnt if you want add press y or n : ";
		$ch=<>;
		chomp($ch);
		if($ch=="y"){
			print "Pages : ";
			$pg=<>;
			$books{$name}=$pg;
			print "Books added in list..";
		} else {
			print "As your choice book not added.";
		}
	}
}

#diplay by pages
sub displaybypages{
	print "Enter the Number of Pages of the Book : ";
	$pages=<>;
	chomp($pages);
	while(($k, $v)=each %books){
		if($pages==$v){
			print "$k having pages $pages....\n";
			return;
		}
	}
	print "no book in list having $pages pages.\n";
}

#print in sorted
sub sortedprint{
    print "Sorted by Name : \n";
	print "$_\n" for sort keys %books;
}

#find pages in book
sub bookpage{
    print "Pages of Book : \n";
    while(($k, $v)=each %books){
        print "$k--->$v\n";
    }
}

#end of package
END{
    print "Finished execution of.....".__PACKAGE__."\n";
}