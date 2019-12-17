use Try::Tiny;
use JSON 'decode_json';


sub readJsonFile {
	my ($filename) = @_;

	open my $fh_file, '<', $filename
	  or die "can't open $filename: $!\n";
	my @lines = <$fh_file>;
	close $fh_file;

	try {
		chomp @lines;
		my $input_json;
		$input_json .= $_ for @lines;
		return decode_json($input_json);
	} catch {
		die "invalid JSON: $_\n";
	};
}


sub writeInFile {
	my ($file, $content) = @_;

	open my $fh_file, '>', $file
	  or die "error opening $file: $!\n";
	print $fh_file $content;
	close $fh_file
	  or die "error closing $file: $!\n";
}


1;
