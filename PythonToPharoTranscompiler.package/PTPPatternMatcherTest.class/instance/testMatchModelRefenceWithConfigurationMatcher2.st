tests
testMatchModelRefenceWithConfigurationMatcher2
	| pattern pattern2 model1 model2 |
	model1 := FASTReturnStatement new
		expression: (FASTStringLiteral new value: 'klm').
	model2 := FASTReturnStatement new
		expression: (FASTStringLiteral new value: 'patrick').
	pattern := (FASTReturnStatement
		with: {(FASTStringLiteral with: {'klm'})}) asMatcher.
	pattern2 := (FASTReturnStatement
		with: {(FASTStringLiteral with: 'klm')}) asMatcher.
	self assert: (pattern match: model1).
	self assert: (pattern2 match: model1).
	self deny: (pattern match: model2).
	self deny: (pattern match: model2)