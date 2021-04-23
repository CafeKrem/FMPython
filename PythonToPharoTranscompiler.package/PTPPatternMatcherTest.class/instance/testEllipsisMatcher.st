tests
testEllipsisMatcher
	| pattern pattern1 model0 model1 matchResult matchResult1 |
	pattern := {(#ellipsis -> $*).
	(FASTExpressionStatement with: {100})} asMatcher.
	pattern1 := {(#ellipsis -> EllipsisMatcher new).
	(FASTExpressionStatement with: {100})} asMatcher.
	model0 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestEllipsisNode1.
	matchResult := pattern match: model0.
	matchResult1 := pattern1 match: model0.
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