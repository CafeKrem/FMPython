tests
testMatchTwoLastStatementOfASequence
	| pattern model matchResult |
	pattern := {$*.
	(JokerMatcher new named: #lastlast).
	(JokerMatcher new named: #last)} asMatcher.
	model := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode3.
		1halt.
	matchResult := pattern match: model.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #lastlast) expression value equals: 50.
	self assert: (matchResult at: #last) expression value equals: 26