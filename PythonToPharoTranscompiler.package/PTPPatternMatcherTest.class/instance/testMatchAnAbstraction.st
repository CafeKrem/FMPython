tests
testMatchAnAbstraction
	| pattern model model2 model3 matchResult |
	pattern := {(FASTExpressionStatement
		with: {(#expression -> (FASTLiteral named: #x))})} asMatcher.
	model := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestAbstraction.
	model2 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestAbstraction2.
	model3 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestAbstraction3.
	self deny: (pattern match: model3) isMatch.
	matchResult := pattern match: model.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #x) value equals: 100.
	matchResult := pattern match: model2.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #x) value equals: 'klm'