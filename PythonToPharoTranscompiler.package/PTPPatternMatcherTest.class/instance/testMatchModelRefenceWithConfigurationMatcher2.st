tests
testMatchModelRefenceWithConfigurationMatcher2

	| pattern pattern2 model1 model2 |
	model1 := FASTReturnStatement new expression:
		          (FASTStringLiteral new value: 'klm').
	model2 := FASTReturnStatement new expression:
		          (FASTStringLiteral new value: 'patrick').
	pattern := (FASTReturnStatement suchAs:
		            { (FASTStringLiteral suchAs: { 'klm' }) }) asMatcher.
	pattern2 := (FASTReturnStatement suchAs:
		             { (FASTStringLiteral suchAs: 'klm') }) asMatcher.
	self assert: (pattern match: model1) isMatch.
	self assert: (pattern2 match: model1) isMatch.
	self deny: (pattern match: model2) isMatch.
	self deny: (pattern match: model2) isMatch