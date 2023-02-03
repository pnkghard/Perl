#!/usr/bin/perl
%books=("perl"=>100,"python"=>200);

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
		print "Book not in list....";
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

#main driven
do{
	print "
			1. add new book
			2. delete a book
			3. display all
			4. modify pages
			5. display all book name based on pages
			6. sort by name
			7. display pages of the book
			8. exit\n
		Enter your choice :";
	$choice=<>;

	if($choice==1){
	   addnewbook(); 
	} elsif($choice==2){
	   print "enetr book name to delete :";
	   $bk=<>;
	   $status=deletebyname($bk);
	   if(status){
		   print("\ndeleted\n");
	   }else{
		   print "not found\n";
	   }
   	} elsif($choice==3){
		print "Book List :\n";
	   	displayall();
	} elsif($choice==4){
		modifypages;
	}
	elsif($choice==5){
		displaybypages;
	} elsif($choice==6){
         	print "Sorted by Name : \n";
			print "$_\n" for sort keys %books;
	} elsif($choice==7){
         	print "Pages of Book : \n";
			while(($k, $v)=each %books){
				print "$k--->$v\n";
			}
	} elsif($choice==8){
         	print "Thank you for visiting\n";
	} else{
	   print("wrong choice");
	}
}while($choice!=8); 
