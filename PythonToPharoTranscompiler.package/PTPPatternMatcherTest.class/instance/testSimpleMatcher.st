tests
testSimpleMatcher

	| isDetected |
	isDetected := false.
	matcher := PTPPatternMatcher new
		           from:
			           { (#a
			            ->
				            (FASTReturnStatement with:
						             { (FASTLiteral with: { 4 }) })) };
		           product: [ isDetected := true ];
		           yourself.

	self assert: (matcher executeOn: (self productFASTPharo:
				  PTPPatternMatcherTest >> #methodTestReturnLiteral4)).
	self assert: (matcher executeOn: (self productFASTPharo:
				  PTPPatternMatcherTest >> #methodTestReturnLiteralComplex)).
	self deny: (matcher executeOn: (self productFASTPharo:
				  PTPPatternMatcherTest >> #methodTestReturnString))