tests
test1

	| pattern model matchResult |
	pattern := { (RBSequenceNode suchAs:
		            { (#statements -> (RBMessageNode suchAs: { 
				              (#receiver -> (RBBlockNode suchAs:
					                { (#body
					                 -> (RBSequenceNode suchAs: { (#statements -> { 
								                   ($* named: #a).
								                   (JokerMatcher named: #cond) }) })) })).
				              (#selector
				               -> (RBSelectorNode suchAs: { 'whileTrue:' })).
				              (#arguments -> (RBBlockNode suchAs:
					                { (#body -> (RBSequenceNode named: #whileBlock)) })) })) }) }
		           asMatcher.

	model := (PTPPatternMatcherTest >> #methodRBWhileTrue) ast body.
	matchResult := pattern match: model.

	self assert: matchResult isMatch.
	self
		assertCollection: ((matchResult at: #a) collect: #value)
		hasSameElements: { 1. 2. 3 }.
	self assert: (matchResult at: #cond) selector equals: '='.
	self
		assertCollection:
		((matchResult at: #whileBlock) statements collect: #value)
		hasSameElements: { 6 }