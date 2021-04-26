tests
testSequenceMatcher
	| pattern model0 model1 model2 mathResult2 matchResult2 |
	pattern := {((FASTExpressionStatement
		with: {FASTPharoBlockExpression}) named: #block).
	((FASTExpressionStatement with: 100) named: #int).
	((FASTExpressionStatement with: {FASTStringLiteral}) named: #str)}
		asMatcher.
	model0 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequence.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequenceIncomplete.
	model2 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequenceDirectMatch.
	self deny: (pattern match: model0) isMatch.
	self deny: (pattern match: model1) isMatch.
	mathResult2 := pattern match: model2.
	self assert: mathResult2 isMatch.
	self
		assert: (mathResult2 at: #block) expression class
		equals: FASTPharoBlockExpression.
	self assert: (mathResult2 at: #int) expression value equals: 100.
	self
		assert: (mathResult2 at: #str) expression class
		equals: FASTStringLiteral