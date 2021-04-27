tests
testBinOp
	| pattern model model1 matcherResult |
	pattern := {(FASTExpressionStatement
		with:
			{(#expression
				->
					(FASTPharoMessageSend
						with:
							{(#receiver -> (JokerMatcher new named: #x)).
							(#selector -> '+').
							(#arguments -> (JokerMatcher new named: #x))}))})} asMatcher.
	model := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestBinOp.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestBinOp1.
	matcherResult := pattern match: model.
	self assert: matcherResult isMatch.
	self assert: (matcherResult at: #x) value equals: 10.
	self deny: (pattern match: model1) isMatch