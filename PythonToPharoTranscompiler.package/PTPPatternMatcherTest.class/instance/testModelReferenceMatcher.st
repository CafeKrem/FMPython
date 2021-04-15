tests
testModelReferenceMatcher
	| pattern |
	pattern := FASTReturnStatement asMatcher.
	self
		assert:
			(pattern
				match:
					(FASTReturnStatement new
						expression:
							(FASTStringLiteral new
								value: 'klm';
								yourself);
						yourself)).
	self deny: (pattern match: FASTExpressionStatement new)