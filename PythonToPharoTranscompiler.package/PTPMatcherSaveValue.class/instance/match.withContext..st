accessing
match: aValue withContext: aContext
	^ (value match: aValue withContext: aContext)
		ifTrue: [ aContext at: key put: aValue.
			true ]
		ifFalse: [ false ]