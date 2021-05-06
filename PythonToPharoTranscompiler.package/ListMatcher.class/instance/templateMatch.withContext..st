private-running
templateMatch: aCollection withContext: aContext
	| isMatched |
	1 halt.
	isMatched := matcher match: aCollection withContext: aContext.
	[ isMatched and: [ next hasNext ] ]
		whileTrue: [ isMatched := matcher next match: aCollection withContext: aContext.
			matcher := matcher next ].
	^ isMatched