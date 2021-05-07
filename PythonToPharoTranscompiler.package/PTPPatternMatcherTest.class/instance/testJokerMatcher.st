tests
testJokerMatcher

	| pattern pattern1 pattern2 model model1 matchResult matchResult2 pattern3 |
	pattern := { 
		           (FASTExpressionStatement suchAs: { 1 }).
		           (JokerMatcher new named: #joker) } asMatcher.
	pattern1 := { 
		            (JokerMatcher new named: #joker).
		            (FASTExpressionStatement suchAs: { 100 }) } asMatcher.
	pattern2 := { 
		            (JokerMatcher new named: #first).
		            $*.
		            (JokerMatcher new named: #last) } asMatcher.
	pattern3 := { 
		            JokerMatcher new.
		            (FASTExpressionStatement suchAs: { 2 }).
		            (FASTExpressionStatement suchAs: { 99 }) } asMatcher.
	model := self productFASTPharo:
		         PTPPatternMatcherTest >> #methodTestJoker.
	model1 := self productFASTPharo:
		          PTPPatternMatcherTest >> #methodTestJoker2.
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