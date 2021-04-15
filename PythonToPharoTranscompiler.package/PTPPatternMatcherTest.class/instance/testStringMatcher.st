tests
testStringMatcher
	| pattern |
	pattern := 'klm' asMatcher.
	self assert: (pattern match: 'klm').
	self deny: (pattern match: 'patrick')