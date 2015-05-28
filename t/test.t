use strictures 2;

use Test::More tests => 6;

BEGIN {
  use_ok( 'DeploymentLiveDemo' );
}

my $foo = DeploymentLiveDemo->new( foo => ':-)' );

isa_ok $foo, 'DeploymentLiveDemo';

is $foo->foo, ':-)', 'foo has correct defaults';
is $foo->bar, undef, 'bar has correct defaults';
is $foo->baz, undef, 'baz has correct defaults';

is $foo->test, '123', 'test returns expected result';

1;
