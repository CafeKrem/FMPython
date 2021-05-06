private-running
match: aCollection withContext: aContext

	| isMatched matcherTmp tmpCollection |
	tmpCollection := aCollection copy.
	matcherTmp := matcher.
	isMatched := matcherTmp match: tmpCollection withContext: aContext.
	[ isMatched and: [ matcherTmp hasNext ] ] whileTrue: [ 
		isMatched := matcherTmp next
			             match: tmpCollection
			             withContext: aContext.
		matcherTmp := matcherTmp next ].
	^ isMatched