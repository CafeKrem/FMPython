accessing
match: aValue withContext: aContext
	^ aValue class = modelDescription
		ifTrue: [ configuration match: aValue withContext: aContext ]
		ifFalse: [ false ]