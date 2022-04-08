# logfmt/these-keys


## [log.txt](./log.txt)

```
2010-09-16T15:13:46.723498+00:00 heroku[router]: at=info method=GET path="/posts" host=myapp.herokuapp.com" fwd="204.204.204.204" dyno=web.1 connect=1ms service=18ms status=200 bytes=975 agent="Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)" referer="https://example.com/"

```

## [perl.pl](./perl.pl)

```
#!/usr/bin/env perl
# Usage:
#   echo a=A b=B c=C | perl $0 b c
#   B
#   C
use strict;
use warnings;
use feature 'say';
use List::Util qw(pairs);

my @keys = @ARGV;
undef @ARGV;

while(<>){
    my @pairs = /(\S+)=("[^"]+"|\S+)/g;
    foreach my $pair (pairs @pairs) {
        foreach my $key (@keys) {
            if ($key eq $pair->[0]) {
                say $pair->[1];
            }
        }
    }
}

```

