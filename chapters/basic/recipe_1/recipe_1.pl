#!/usr/bin/perl -w

# read and write different sequence files
#

require "../../utils/bpc_config.pl";  # all the config stuff

# read in a sequence in raw format
use Bio::SeqIO;

my $seq_handle = Bio::SeqIO->new(-file => $datadir."dna50.raw",
			  '-format' => 'Raw');

while (my $seq = $seq_handle->next_seq() ) {
	print "$seq\n";
	print $seq->str(), "\n";
}

