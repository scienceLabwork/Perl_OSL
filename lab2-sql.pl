use strict;
use warnings;
use v5.10;

use DBI;
my $dsn = "DBI:mysql:perlmysqldb";
my $username = "root";
my $password = '';

my %attr = ( PrintError=>0, RaiseError=>1);
my $dbh  = DBI->connect($dsn,$username,$password, \%attr);
my $sth = $dbh->prepare("SELECT * FROM users");
$sth->execute();
my $row = $sth->fetchrow_hashref();
print $row->{'name'};
$sth->finish();
$dbh->disconnect();