execute
lookAtPattern: pattern on: aValue actionBlock: actionBlock
	| matchResult |
	matchResult := PTPMatcherResult new.
	(pattern match: aValue withContext: matchResult)
		isMatch
		ifTrue: [ actionBlock
				valueWithArgumentsDictionary: matchResult matchedVariables ].
	^ matchResult 