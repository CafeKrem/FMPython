accessing
templateMatch: aCollection withContext: aContext
	| aValue |
	aValue := self firstElementOf: aCollection.
	^ aValue class = modelDescription
		ifTrue: [ configuration match: aValue withContext: aContext ]
		ifFalse: [ false ]