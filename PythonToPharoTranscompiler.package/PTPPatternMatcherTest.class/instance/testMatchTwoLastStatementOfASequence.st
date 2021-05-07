tests
testMatchTwoLastStatementOfASequence

	| pattern model matchResult pattern1 matchResult2 |
	pattern := { 
		           $*.
		           (JokerMatcher new named: #lastlast).
		           (JokerMatcher new named: #last) } asMatcher.
	pattern1 := { 
		            $*.
		            (JokerMatcher new named: #beforebefore50).
		            (JokerMatcher new named: #before50).
		            (FASTExpressionStatement suchAs: { 50 }) } asMatcher.
	model := self productFASTPharo:
		         PTPPatternMatcherTest >> #methodTestEllipsisNode3.
	matchResult := pattern match: model.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #lastlast) expression value equals: 50.
	self assert: (matchResult at: #last) expression value equals: 26.
	matchResult2 := pattern1 match: model.
	self assert: matchResult2 isMatch.
	self assert: (matchResult2 at: #before50) expression value equals: 42.
	self
		assert: (matchResult2 at: #beforebefore50) expression value
		equals: 100