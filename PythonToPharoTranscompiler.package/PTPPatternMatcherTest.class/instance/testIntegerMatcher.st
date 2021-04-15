tests
testIntegerMatcher
	| pattern |
	pattern := 100 asMatcher.
	self assert: (pattern match: 100) isMatch.
	self deny: (pattern match: 900) isMatch