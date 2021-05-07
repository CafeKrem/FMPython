private-running
match: aCollection withContext: aContext

	| aValue |
	aValue := self firstElementOf: aCollection.
	(self hasMatch: aValue withContext: aContext)
		ifTrue: [ 
			aValue isString
				ifTrue: [ 
					aCollection isString
						ifTrue: [ 
						aCollection become: (aValue allButFirst: self value size) ]
						ifFalse: [ 
						aCollection at: 1 put: (aValue allButFirst: self value size) ] ]
				ifFalse: [ self save: (self pop: aCollection) inContext: aContext ].

			^ true ]
		ifFalse: [ ^ false ]