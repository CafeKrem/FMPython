tests
testSequenceMatcher
	| pattern model0 context |
	pattern := {(#block -> FASTPharoBlockExpression).
	(#int -> 100).
	(#str -> FASTStringLiteral)} asMatcher.
	model0 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestSequence.
	self assert: (pattern match: model0) isMatch.
	context := (pattern match: model0) context.
	self
		assert: (context at: #block) class
		equals: FASTPharoBlockExpression.
	self assert: (context at: #int) value equals: 100.
	self assert: (context at: #str) value equals: 'coucou'