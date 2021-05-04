private-running
match: aCollection withContext: aContext
	^ (self hasMatch: aCollection withContext: aContext)
		ifTrue: [ self save: (self pop: aCollection) inContext: aContext.
			true ]
		ifFalse: [ false ]