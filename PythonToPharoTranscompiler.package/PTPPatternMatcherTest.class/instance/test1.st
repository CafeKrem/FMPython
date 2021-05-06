tests
test1

	| pattern model matchResult |
	pattern := { (RBSequenceNode with:
		            { (#statements -> (RBMessageNode with: { 
				              (#receiver -> (RBBlockNode with:
					                { (#body
					                 -> (RBSequenceNode with: { (#statements -> { 
								                   ($* named: #a).
								                   (JokerMatcher named: #cond) }) })) })).
				              (#selector
				               -> (RBSelectorNode with: { 'whileTrue:' })).
				              (#arguments
				               ->
				               (RBBlockNode with:
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