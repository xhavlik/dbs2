sub valueOrNull {
	my ($value) = @_;

	if ($value and $value !~ /^(?![\s\S])/) {
		if ($value =~ /\s+(.*)/) {
			$value = $1;
		}
		if ($value =~ /(.*)\s+/) {
			$value = $1;
		}

		return $value;
	} else {
		return "null";
	}
}


sub stringOrNull {
	my $value = valueOrNull(@_);

	if ($value ne "null") {
		return "'$value'";
	}
	return "null";
}


sub intOrNull {
	my $value = valueOrNull(@_);

	if ($value ne "null") {
		if ($value =~ /(\d+)/) {
			return "$1";
		}
	}
	return "null";
}


sub floatOrNull {
	my $value = valueOrNull(@_);

	if ($value ne "null") {
		if ($value =~ /(\d+)[\.,]?(\d+)/) {
			return "$1.$2";
		}
		if ($value =~ /(\d+)/) {
			return "$1";
		}
	}
	return "null";
}


sub dateOrNull {
	my $value = valueOrNull(@_);

	if ($value ne "null") {
		if ($value =~ /(\d+\-\d+\-\d+)/) {
			return "'$1'";
		}
		if ($value =~ /(\d+)\.(\d+)\.(\d+)/) {
			return "'$3-$2-$1'";
		}
	}
	return "null";
}


1;
