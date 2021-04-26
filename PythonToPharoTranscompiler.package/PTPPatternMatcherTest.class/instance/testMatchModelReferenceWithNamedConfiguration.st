tests
testMatchModelReferenceWithNamedConfiguration
	| pattern model1 model2 |
	pattern := {((FASTExpressionStatement
		with:
			{(FASTPharoCascade
				with:
					{(FASTPharoMessageSend
						with:
							{(#receiver -> 100).
							(#selector -> 'klm')})})}) named: #a)} asMatcher.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestMultipleChildrenNamed.
	model2 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestMultipleChildrenNamed2.
	self assert: (pattern match: model1) isMatch.
	self deny: (pattern match: model2) isMatch