package SortKey::Num::by_length;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    return +{
        v => 1,
        args => {
        },
    };
}

sub gen_keygen {
    my %args = @_;

    \&CORE::length;
}

1;
# ABSTRACT: String length as sort key

=for Pod::Coverage ^(meta|gen_keygen)$

=head1 SYNOPSIS

 use Sort::Key qw(nkeysort);
 use SortKey::Num::by_length;

 my $keygen = SortKey::Num::by_length::gen_keygen;
 my @sorted = &nkeysort($keygen, "food", "foolish", "foo");


=head1 DESCRIPTION

This is just a demonstration module for L<SortKey>. You might just as well:

 nkeysort { length shift } ...

=cut
