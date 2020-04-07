##
use strict;
my $pkstudy; my $studydiseasesite;
my $line; my $sds;
my @tmp;  my $i=0;

open(F, 'D:\\Minivelos\\Sources\\er_StudyDiseaseSite.csv') or die "couldnt open the er_studydiseasesite.csv file \n";
open(FOU,">D:\\Minivelos\\Sources\\er_studydiseasesiteN.csv") or die "couldnt open this table ..\..\Sources\er_studydiseasesiteN.csv \n";
while ($line=<F>){
	chop($line);
	@tmp =  split(',',$line);
	if ($#tmp==0) { 	
		$pkstudy = shift @tmp;
		print FOU "$i,$pkstudy\n";
		$i++;
		next;
       }
	$pkstudy = shift @tmp;
	
        foreach my $sds (@tmp) {
           $sds =~ s/"//g;
           print FOU "$i,$pkstudy, $sds\n" unless $i==0;
           $i++;
        }
}
close(FOU);
close(F);