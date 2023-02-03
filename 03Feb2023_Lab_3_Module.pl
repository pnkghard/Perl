require bookstore;

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
	   bookstore::addnewbook(); 
	} elsif($choice==2){
	   print "enetr book name to delete :";
	   $bk=<>;
	   bookstore::deletebyname($bk);
   	} elsif($choice==3){
		print "Book List :\n";
	   	bookstore::displayall();
	} elsif($choice==4){
		bookstore::modifypages();
	} elsif($choice==5){
		bookstore::displaybypages();
	} elsif($choice==6){
        bookstore::sortedprint();
	} elsif($choice==7){
        bookstore::bookpage()
	} elsif($choice==8){
        print "Thank you for visiting\n";
	} else{
	   print("wrong choice");
	}
}while($choice!=8);