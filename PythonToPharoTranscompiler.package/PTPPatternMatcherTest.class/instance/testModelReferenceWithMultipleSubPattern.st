tests
testModelReferenceWithMultipleSubPattern

	| pattern model1 model2 model3 |
	pattern := { ((FASTExpressionStatement suchAs:
		             { (FASTPharoAssignmentExpression suchAs: { 'klm'. 100 }) }) 
		            named: #a) } asMatcher.
	model1 := self productFASTPharo:
		          PTPPatternMatcherTest >> #methodTestAssignement.
	model2 := self productFASTPharo:
		          PTPPatternMatcherTest >> #methodTestAssignement2.
	model3 := self productFASTPharo:
		          PTPPatternMatcherTest >> #methodTestAssignement3.
	self assert: (pattern match: model1) isMatch.
	self deny: (pattern match: model2) isMatch.
	self deny: (pattern match: model3) isMatch