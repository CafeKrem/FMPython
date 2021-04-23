match
match: aValue
	| matcherResult |
	matcherResult := PTPMatcherResult new.
	matcherResult
		isMatch:
			(self
				match:
					(LinkedList
						newFrom:
							(aValue isString
								ifTrue: [ {aValue} ]
								ifFalse: [ aValue asCollection ]))
				withContext: matcherResult).
	^ matcherResult