tests
testEllipsisMatcher
	| pattern pattern1 model0 model1 matchResult matchResult1 model2 |
	pattern := {($* named: #ellipsis).
	(FASTExpressionStatement suchAs: {100})} asMatcher.
	pattern1 := {(EllipsisMatcher new named: #ellipsis).
	(FASTExpressionStatement suchAs: {100})} asMatcher.
	model0 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode1.
	model2 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode2.
	matchResult := pattern match: model0.
	matchResult1 := pattern1 match: model0.
	self deny: (pattern match: model2) isMatch.
	self deny: (pattern1 match: model2) isMatch.
	self assert: matchResult isMatch.
	self
		assertCollection: (matchResult context at: #ellipsis)
		hasSameElements: {}.
	self assert: matchResult1 isMatch.
	self
		assertCollection: (matchResult1 context at: #ellipsis)
		hasSameElements: {}.
	matchResult := pattern match: model1.
	matchResult1 := pattern1 match: model1.
	self assert: matchResult isMatch.
	self
		assertCollection:
			((matchResult context at: #ellipsis)
				collect: [ :each | each expression value ])
		hasSameElements: {'klm' . 'jiop' . 'roger'}.
	self assert: matchResult1 isMatch.
	self
		assertCollection:
			((matchResult1 context at: #ellipsis)
				collect: [ :each | each expression value ])
		hasSameElements: {'klm' . 'jiop' . 'roger'}