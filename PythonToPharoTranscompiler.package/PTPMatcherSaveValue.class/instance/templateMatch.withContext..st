accessing
templateMatch: aCollection withContext: aContext
	| aValue |
	aValue := self firstElementOf: aCollection..
	^ (value match: aValue withContext: aContext)
		ifTrue: [ aContext at: key put: aValue.
			true ]
		ifFalse: [ false ]