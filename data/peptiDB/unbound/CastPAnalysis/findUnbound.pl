#!/usr/bin/perl
# author: dattias
# findUnbound

my $unboundsDir = "/vol/ek/dattias/PeptideDocking/PlacementProtocol/unbound/unboundSet";

opendir(DIR, ".") or die $!;
my @files = grep(/^.*\.tar.gz$/, readdir(DIR));
closedir(DIR);
#print `pwd`."\n";
#print "files:@files\n";

opendir(DIR, $unboundsDir) or die $!;
my @pdbFiles = grep(/^....\.pdb$/, readdir(DIR));
closedir(DIR);
my %pdbs = ();
foreach my $pdb(@pdbFiles){
	$pdb =~ s/.pdb//;
	$pdbs{$pdb} = 1;
}
@list = keys %pdbs;
#print "pdbs: @list\n";

my $chain;
my $code_fasta;
my $pdb_fasta;
my $currPdb = "";
foreach my $code(@files){
	$code =~ s/.tar.gz//;
	$currPdb = "";
	#print "----------------------\n$code\n";
	
	`tar -xzf $code.tar.gz`;
	chdir "uploads";
	chomp($chain = `getChain.pl $code.pdb 1`);
	#print "chain: $chain\n";
	chomp($code_fasta = `getFastaFromCoords.pl -pdbfile $code.pdb -chain $chain | grep -v ">"`);
	#print "code_fasta: $code_fasta\n";
	
	foreach my $pdb(keys %pdbs){
		chomp($pdb_fasta = `cat $unboundsDir/$pdb.fasta | grep -v ">"`);
		#print "--------------\n";
		#print length($code_fasta)." ".length($pdb_fasta)." $pdb\n";
		#print "pdb_fasta: $pdb_fasta\n";
		#if(length($code_fasta) == length($pdb_fasta)-1){
		#	print "pdb $pdb\n";
		#}
		if($code_fasta eq $pdb_fasta){
			$currPdb = $pdb;
			delete $pdbs{$pdb};
			last;
		}
	}
	#exit;
	if($currPdb eq ""){
		print "$code - PDB not found!\n";
		chdir "../";
		#`mv uploads $code`;
		`rm -rf uploads`;
	}
	else{
		print "$code $currPdb\n";
		`mv $code.pdb $currPdb.pdb`;
		`mv $code.mouth $currPdb.mouth`;
		`mv $code.mouthInfo $currPdb.mouthInfo`;
		`mv $code.poc $currPdb.poc`;
		`mv $code.pocInfo $currPdb.pocInfo`;
		
		chdir "../";
		`mv uploads $currPdb`;
	}
}

print "Missing PDBs: ".(keys %pdbs)."\n";
