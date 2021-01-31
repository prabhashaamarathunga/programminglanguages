#20204646

#reference: https://perldoc.perl.org/File::Find
#reference: https://www.youtube.com/watch?v=2Y6OkKHxksU

use strict;
use warnings;
use File::Find;

find (
{
	wanted => \&ConfPerl, bydepth => 1
},
'/');

sub ConfPerl
{
    if(-f $File::Find::name && /\.conf$/){
            print "$File::Find::name$/";
    }
	
}

exit;
