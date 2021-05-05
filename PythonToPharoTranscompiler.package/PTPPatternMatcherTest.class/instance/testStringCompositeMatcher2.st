tests
testStringCompositeMatcher2

	| pattern model matchResult |
	pattern := { (FASTExpressionStatement with:
		            { (#expression -> (FASTPharoMessageSend with:
			              { (#selector
			               -> (FASTPharoSelector with: { (#name -> { 
						                 'set'.
						                 ($* named: #x) }) })) })) }) } asMatcher.

	model := self productFASTPharo:
		         PTPPatternMatcherTest >> #methodTestCompose1.
	matchResult := pattern match: model.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #x) equals: 'Patrick'