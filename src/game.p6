use v6;

constant sep = '+---+---+---+';

sub MAIN($sudoku) {
    my Str $reformed = $sudoku.trans('0' => ' ');

    for $reformed.comb(9) -> $line {
	say sep if $++ %% 3;
	say '|', $line.comb(3).join('|'), '|'
    }
    say sep;
}


