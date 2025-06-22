# parse.pl - Parse and print lines

open(my $fh, '<', 'data.txt') or die "Can't open file";
while (my $line = <$fh>) {
    print "Line: $line";
}
close($fh);
