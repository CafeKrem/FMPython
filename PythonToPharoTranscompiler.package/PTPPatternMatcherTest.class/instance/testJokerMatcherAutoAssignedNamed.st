tests
testJokerMatcherAutoAssignedNamed

	| pattern model matchResult |
	pattern := { (FASTExpressionStatement suchAs:
		            { (#expression -> FASTPharoMessageSend suchAs: { 
				             (#receiver -> #@).
				             (#selector -> '+').
				             (#arguments -> #@) }) }) } asMatcher.

	model := self productFASTPharo:
		         PTPPatternMatcherTest >> #methodTestBinOp1.

	matchResult := pattern match: model.

	self assert: matchResult isMatch.

	self assert: (matchResult at: #receiver) value equals: 10.
	self assert: (matchResult at: #arguments) value equals: 5