private-running
match: aCollection withContext: aContext
	| isMatched matcherTmp |
	matcherTmp := matcher.
	isMatched := matcherTmp match: aCollection withContext: aContext.
	[ isMatched and: [ matcherTmp hasNext ] ]
		whileTrue: [ isMatched := matcherTmp next
				match: aCollection
				withContext: aContext.
			matcherTmp := matcherTmp next ].
	^ isMatched