##
##  Perl script "Normalize Person Additional Race" by Inigo San Gil
##
## This small script takes the rows that have more than 2 columns
## and splits them in as many rows as extra columns -- this is to stage 
## the data for a pivot database table.
##
use strict;
my $pkperson; my $addrace;
my $line; 
my @tmp;  my $i=0;

open(F, 'D:\\Minivelos\\Sources\\PersonAddRace.csv') or die "couldnt open the PersonAddRace.csv file \n";
open(FOU,">D:\\Minivelos\\Sources\\PersonAddRaceN.csv") or die "couldnt open this table ..\..\Sources\PersonAddRaceN.csv \n";
while ($line=<F>){
	chop($line);
	@tmp =  split(',',$line);
	if ($#tmp==0) { 	
		$pkperson = shift @tmp;
		print FOU "$i, $pkperson\n";
		$i++;
		next;
       }
	$pkperson = shift @tmp;
        foreach my $addrace (@tmp) {
           $addrace =~ s/"//g;
           print FOU "$i, $pkperson, $addrace \n" unless $i==0;
           $i++;
        }
}
close(FOU);
close(F);