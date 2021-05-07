tests
testMatchModelRefenceWithConfigurationMatcher

	| pattern |
	pattern := (FASTReturnStatement suchAs:
		            { (FASTStringLiteral suchAs: 'klm') }) asMatcher.
	self assert: (pattern match: (FASTReturnStatement new expression:
				  (FASTStringLiteral new value: 'klm'))) isMatch.
	self deny: (pattern match: (FASTReturnStatement new expression:
				  (FASTStringLiteral new value: 'patrick'))) isMatch