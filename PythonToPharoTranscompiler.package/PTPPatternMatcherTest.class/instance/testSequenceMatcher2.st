tests
testSequenceMatcher2
	| pattern model0 model1 model2 |
	pattern := {FASTPharoBlockExpression.
	100.
	FASTStringLiteral} asMatcher.
	model0 := (self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequence)
		collect: #expression.
	model1 := (self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequenceIncomplete)
		collect: #expression.
	model2 := (self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequenceDirectMatch)
		collect: #expression.
	self deny: (pattern match: model0) isMatch.
	self deny: (pattern match: model1) isMatch.
	self assert: (pattern match: model2) isMatch