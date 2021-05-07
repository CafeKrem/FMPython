tests
testEllipsisMatcher2
	| pattern model matcherResult |
	pattern := {(JokerMatcher new named: #joker).
	($* named: #before100).
	(FASTExpressionStatement suchAs: {100}).
	($* named: #after100)} asMatcher.
	model := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode3.
	matcherResult := pattern match: model.
	self assert: matcherResult isMatch.
	self
		assertCollection:
			((matcherResult at: #before100)
				collect: [ :each | each expression value ])
		hasSameElements: {2 . 3 . 4 . 6}.
	self
		assertCollection:
			((matcherResult at: #after100)
				collect: [ :each | each expression value ])
		hasSameElements: {42 . 50 . 26}.
	self assert: (matcherResult at: #joker) expression value equals: 1