#!/usr/bin/perl -w

# create a random seq of NA or AA
#
# moddeled after Perl Cookbook recipe 2.7
#

my @chars = ( "A" , "G" , "C", "T" );
my $length = 60;

for my $k (1 .. 5) {
	my $na = join ("", @chars[ map { rand @chars } (1 .. $length) ]);
	print "$na\n";
}
