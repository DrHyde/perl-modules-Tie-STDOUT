#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
END { done_testing() };
my $accumulator;

use Tie::STDOUT
    print    => sub { $accumulator = ''; $accumulator .= uc($_) foreach(@_) },
    printf   => sub { $accumulator = ''; my $fmt = shift(); $accumulator .= uc(sprintf($fmt, @_)) };
    # can't be bothered with syswrite, as the code which handles it is exactly
    # the same as the others

print qw(foo bar baz);
ok($accumulator eq 'FOOBARBAZ', 'user-defined functions work');

printf "%s %d", "foo", 20;

ok($accumulator eq 'FOO 20', 'user-defined functions work');
