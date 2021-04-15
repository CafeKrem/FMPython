tests
testStringMatcher
	| pattern |
	pattern := 'klm' asMatcher.
	self assert: (pattern match: 'klm') isMatch.
	self deny: (pattern match: 'patrick') isMatch