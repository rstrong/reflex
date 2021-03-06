#!/usr/bin/env perl

use warnings;
use strict;
use lib qw(../lib);

{
	package App;
	use Moose;
	extends 'Reflex::Timer';

	sub on_my_tick {
		print "tick at ", scalar(localtime), "...\n";
	}
}

exit App->new(interval => 1, auto_repeat => 1)->run_all();
