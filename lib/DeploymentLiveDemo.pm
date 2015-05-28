#!/usr/bin/env perl
package DeploymentLiveDemo;
use strictures 2;

use Moo;
use MooX::Types::MooseLike::Base ':all';

has foo => (
  is => 'rw',
  isa => Str,
  required => 0,
);

has bar => (
  is => 'ro',
  isa => Str,
  required => 0,
);

has baz => (
  is => 'rwp',
  isa => Str,
  required => 0,
);

sub test {
  my ($self) = @_;
  die q{I should DIE}
    if $self->foo eq 'die';
  return 123;
}

1;
