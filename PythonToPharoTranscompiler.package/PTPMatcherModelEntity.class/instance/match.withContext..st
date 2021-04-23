as yet unclassified
match: aValue withContext: aContext
	^ next
		ifNil: [ self templateMatch: aValue withContext: aContext ]
		ifNotNil: [ (self templateMatch: aValue withContext: aContext)
				ifFalse: [ false ]
				ifTrue: [ next match: aValue withContext: aContext ] ]