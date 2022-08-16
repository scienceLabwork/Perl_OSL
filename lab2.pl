my $x = "shahrudra876";
if($x =~ /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/){
    print "Valid Email\n";
}
else{
    print "Invalid Email\n";
}