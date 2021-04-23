tests
testMatchSavedAssociation
	| matchResult1 matchResult2 matchResult3 |
	matcher := {(#a
		-> (FASTReturnStatement with: {(FASTStringLiteral with: {'4'})}))}
		asMatcher.
	matchResult1 := matcher
		match:
			(self
				productFASTPharo: PTPPatternMatcherTest >> #methodTestReturnLiteral4).
	matchResult2 := matcher
		match:
			(self
				productFASTPharo: PTPPatternMatcherTest >> #methodTestReturnLiteralComplex).
	matchResult3 := matcher
		match:
			(self
				productFASTPharo: PTPPatternMatcherTest >> #methodTestReturnString).
	self assert: matchResult1 isMatch.
	self assert: (matchResult1 at: #a) class equals: FASTReturnStatement.
	self deny: matchResult2 isMatch.
	self deny: matchResult3 isMatch