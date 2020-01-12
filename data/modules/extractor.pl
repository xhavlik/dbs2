sub valueOrNull {
	my ($value) = @_;

	if (not defined $value or $value =~ /^\s+$/) {
		return "null";
	} else {
		return $value;
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
		if ($value =~ /(\-?\d+)/) {
			return "$1";
		}
	}
	return "null";
}


sub floatOrNull {
	my $value = valueOrNull(@_);

	if ($value ne "null") {
		if ($value =~ /(\-?\d+)[\.,]?(\d+)/) {
			return "$1.$2";
		}
		if ($value =~ /(\-?\d+)/) {
			return "$1";
		}
	}
	return "null";
}


sub floatOrZero {
	my $value = valueOrNull(@_);

	if ($value ne "null") {
		if ($value =~ /(\-?\d+)[\.,]?(\d+)/) {
			return "$1.$2";
		}
		if ($value =~ /(\-?\d+)/) {
			return "$1";
		}
	}
	return "0.0";
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


sub isValidValue {
	my ($value) = @_;

	if ($value and $value !~ /^(?![\s\S])/) {
		return 1;
	} else {
		return 0;
	}
}


1;
