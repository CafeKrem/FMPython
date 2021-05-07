tests
testStringCompositeMatcher

	| pattern matchResult |
	pattern := { 
		           'set'.
		           ($* named: #x) } asMatcher.
	matchResult := pattern match: 'setLabel'.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #x) equals: 'Label'