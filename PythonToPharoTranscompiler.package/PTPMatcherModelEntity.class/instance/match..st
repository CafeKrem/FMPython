match
match: aValue
	| matcherResult |
	matcherResult := PTPMatcherResult new.
	matcherResult isMatch: (self match: aValue withContext: matcherResult ).
	^ matcherResult isMatch 