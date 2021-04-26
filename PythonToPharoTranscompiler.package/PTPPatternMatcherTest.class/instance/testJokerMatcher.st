tests
testJokerMatcher
	| pattern pattern1 pattern2 model model1 model2 matchResult matchResult2 pattern3 |
	pattern := {(FASTExpressionStatement with: {1}).
	(#joker -> JokerMatcher new)} asMatcher.
	pattern1 := {(#joker -> JokerMatcher new).
	(FASTExpressionStatement with: {100})} asMatcher.
	pattern2 := {(#first -> JokerMatcher new).
	$*.
	(#last -> JokerMatcher new)} asMatcher.
	pattern3 := {JokerMatcher new.
	(FASTExpressionStatement with: {2}).
	(FASTExpressionStatement with: {99})} asMatcher.
	model := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestJoker.
	model1 := self
		productFASTPharo: PTPPatternMatcherTest >> #methodTestJoker2.
	matchResult := pattern match: model.
	self assert: matchResult isMatch.
	self assert: (matchResult at: #joker) expression value equals: 2.
	self deny: (pattern1 match: model) isMatch.
	self deny: (pattern3 match: model) isMatch.
	matchResult2 := pattern2 match: model.
	self assert: (matchResult2 at: #first) expression value equals: 1.
	self assert: (matchResult2 at: #last) expression value equals: 5.
	self assert: (pattern1 match: model1) isMatch.
	self
		assert: ((pattern1 match: model1) at: #joker) expression value
		equals: 10