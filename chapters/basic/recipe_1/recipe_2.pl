#!/usr/bin/perl -w

# read and write different sequence files
#

require "../../utils/bpc_config.pl";  # all the config stuff

use Bio::Seq;
use Bio::SeqIO;

# create a Seq object from a string
print "\nCreating a simple Seq object\n----------------------------\n";
my $seq1 = Bio::Seq->new(-seq => 'AATGGTCCTAGGC');
print "Sequence: ", $seq1->str(), "\n";

# create a Seq object with more attributes set
print "\nA more elaborated Seq object\n----------------------------\n";
my $seq2 = Bio::Seq->new(-seq  => 'AGGAGATTTCCGCGGCTTTAGAAG',
			 -id   => 'myseq002',
			 -desc => 'My second test sequence with BioPerl',
			);
print "Sequence    : ", $seq2->str(), "\n";
print "ID          : ", $seq2->id(), "\n";
print "Description : ", $seq2->desc(), "\n";
# change the description
$seq2->desc('A new description for the object');
print "Description : ", $seq2->desc(), "\n";
# or in one line
#print "Description : ", $seq2->desc('A third description'), "\n";


exit();
# read in a sequence in raw format
print "\nCreating Seq objects via a SeqIO object\n", "-"x40 ,"\n";
my $seq_handle = Bio::SeqIO->new(-file => $datadir."dna_4_x_50.raw",
			  '-format' => 'Raw');
while (my $seq = $seq_handle->next_seq() ) {
	print "Sequence: ", $seq->str(), "\n";  # $seq->str will be deprecated
	print "ID: ", $seq->id(), "\n";
}



