API-matchRuning
match: aValue

	| matcherResult |
	matcherResult := PTPMatcherResult new.
	matcherResult isMatch: (self
			 match: (OrderedCollection newFrom: (aValue isString
						   ifTrue: [ { aValue } ]
						   ifFalse: [ aValue asCollection ]))
			 withContext: matcherResult).
	^ matcherResult