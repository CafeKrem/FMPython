private-running
match: aCollection withContext: aContext

	"| aValue |
	aValue := self firstElementOf: aCollection.
	next
		ifNil: [ (self templateMatch: aValue withContext: aContext)
				ifTrue: [ self save: aValue inContext: aContext.
					^ true ]
				ifFalse: [ ^ false ] ]
		ifNotNil: [ (self templateMatch: aValue withContext: aContext)
				ifFalse: [ ^ false ]
				ifTrue: [ self save: aValue inContext: aContext.
					aValue := self pop: aCollection.
					^ next match: aCollection withContext: aContext ] ]"

	| aValue |
	aValue := self firstElementOf: aCollection.
	(self templateMatch: aValue withContext: aContext)
		ifTrue: [ 
			(aValue isKindOf: String)
				ifTrue: [ 
				aCollection at: 1 put: (aValue allButFirst: self value size) ]
				ifFalse: [ self save: (self pop: aCollection) inContext: aContext ].

			^ true ]
		ifFalse: [ ^ false ]