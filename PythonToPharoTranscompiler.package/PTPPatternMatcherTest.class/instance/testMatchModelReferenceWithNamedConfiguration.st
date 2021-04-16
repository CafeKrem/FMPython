tests
testMatchModelReferenceWithNamedConfiguration
	| pattern model1 model2 |
	pattern := {(#a
		->
			(FASTPharoCascade
				with:
					{(100 named: #receiver).
					(FASTPharoMessageSend with: {('klm' named: #selector)})}))}
		asMatcher.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestMultipleChildrenNamed.
	model2 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestMultipleChildrenNamed2.
	self assert: (pattern match: model1) isMatch.
	self deny: (pattern match: model2) isMatch