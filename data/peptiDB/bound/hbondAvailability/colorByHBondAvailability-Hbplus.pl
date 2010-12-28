#!/usr/bin/perl
# author: dattias
# colorByHBondAvailability

# pdb id
$pdb = shift;

$HBOND_AVAILABLE = "red";
$HBOND_FULL = "blue";
$HBOND_NONE = "white";

# status
$IS_ACCEPTOR = 0;
$IS_DONOR = 1;
$NONE = 2;

%acceptors;
%donors;
loadHBondTables(\%acceptors, \%donors);
#@keys = keys %acceptors;
#print "acceptors: @keys\n";
#@keys = keys %donors;
#print "donors: @keys\n";

open(PDB, "<$pdb.pdb");
open(BONDS, "<$pdb.hb2");
open(PML, ">$pdb.pml");
print PML "load $pdb.pdb\n".
		"cmd.show_as(\"cartoon\"   ,\"all\")\n".
		"cmd.show(\"lines\"     ,\"all\")\n".
		"util.color_chains(\"(all)\")\n\n";

@bondsFile = <BONDS>;
#$bondsFileStr = join('', @bondsFile);

$numDonors = 0;
$numAcceptors = 0;
$inRes = 0;
$currAA = "";
$currRes = 0;

while($line = <PDB>){
	if(!($line =~ m/^ATOM ......  (...).(...) (.)(....)/)){
		next;
	}
	#print $line;
	$atom = $1; # letter
	$aa = $2; # name
	$chain = $3;
	$residue = $4; # number
	
	#print "**inRes: $inRes, currAA $currAA, aa $aa\n"; 
	if($inRes == 1 && $currRes ne $residue){
		$inRes = 0;
	}
	if($inRes == 0){
		$currAA = $aa;
		$currRes = $residue;
		$numDonors = 0;
		$numAcceptors = 0;
		$inRes = 1;
		
		print "************** $currAA ****************\n";
		
		$residuePattern = sprintf("%s%04d", $chain, $residue);
		@all_bonds = grep(/$residuePattern/, @bondsFile);
		@donor_bonds = grep(/^$residuePattern/, @bondsFile);
		$numDonors = scalar @donor_bonds;
		$numAcceptors = (scalar @all_bonds) - $numDonors;
		finishCurrentRes();
	}
}

close (PML);
close (BONDS);
close (PDB);

##########################################
sub finishCurrentRes{
	#print "-- finishing\n";
	if($numDonors == 0 && $numAcceptors == 0){
		printResidueColor($residue, "white");
	}
	elsif($numDonors > 0 && $numAcceptors == 0){
		printResidueColor($residue, "blue");
	}
	elsif($numDonors == 0 && $numAcceptors > 0){
		printResidueColor($residue, "red");
	}
	else{
		printResidueColor($residue, "yellow");
	}
	
#	if(exists $acceptors{$currAA} || exists $donors{$currAA}){
#		if(exists $acceptors{$currAA} && exists $donors{$currAA}){
#			if($numDonors == $donors{$currAA} && $numAcceptors == $acceptors{$currAA}){
#				printResidueColor($residue, $HBOND_FULL);
#				return;
#			}
#		}
#		else{
#			if(exists $acceptors{$currAA}){
#				if($numAcceptors == $acceptors{$currAA}){
#					printResidueColor($residue, $HBOND_FULL);
#					return;
#				}
#			}
#			elsif($numDonors == $donors{$currAA}){
#				printResidueColor($residue, $HBOND_FULL);
#				return;
#			}
#		}
#		printResidueColor($residue, $HBOND_AVAILABLE);
#		return;
#	}
#	else{
#		printResidueColor($residue, $HBOND_NONE);
#	}
}

sub loadHBondTables{
	my ($acceptors, $donors) = @_;
	
	# open hbond potential file
	$hbondsPotentialsFile = "aminoAcidHbondAvailability.txt";
	open(HBONDP, "<$hbondsPotentialsFile");

	while($line = <HBONDP>){
		chomp($line);
		#print "$line\n";
		next if(!($line =~ m/^. (...)/));
		$aa = $1;
		if($line =~ m/A(\d+?)(\s|$)/){
			#print "acceptor $1\n";
			$$acceptors{$aa} = $1;
		}
		if($line =~ m/D(\d+?)(\s|$)/){
			#print "donor $1\n";
			$$donors{$aa} = $1;
		}
	}
		
	close(HBONDP)
}

sub getAtomHBondStatus{
	my ($atomLine) = @_;
	@parts = split(/:/,$atomLine);
	$hbondPart = $parts[11];
	#print "hbondPart: $hbondPart\n";
	if($hbondPart =~ m/A/){
		return $IS_ACCEPTOR;
	}
	if($hbondPart =~ m/D/){
		return $IS_DONOR;
	}
	return $NONE;
}

sub findHBond{
	my (@bonds) = @_;
	$atomStatus = getAtomHBondStatus($bonds[0]);
		
	if($atomStatus == $NONE){
		return $NONE;
	}
	
	for($i = 1; $i < (scalar @bonds); $i++){
		$bondAtomStatus = getAtomHBondStatus($bonds[$i]);
		print "atomStatus $atomStatus, bondAtomStatus $bondAtomStatus\n";
		if($atomStatus == $IS_ACCEPTOR && $bondAtomStatus == $IS_DONOR){
			return $IS_ACCEPTOR;
		}
		if($atomStatus == $IS_DONOR && $bondAtomStatus == $IS_ACCEPTOR){
			return $IS_DONOR;
		}
	}
	
	return $NONE;
}

sub printResidueColor{
	my($residue, $color) = @_;
	print "$color $residue, donors $numDonors, acceptors, $numAcceptors\n";
	print PML "color $color, resi $residue\n";
}
