accessing
match: aValue withContext: aContext
	^ next
		ifNil: [ previous
				ifNil: [ self save: (self firstElementOf: aValue) inContext: aContext ]
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ aValue size == 1
								ifTrue: [ self save: (self firstElementOf: aValue) inContext: aContext.
									true ]
								ifFalse: [ false ] ]
						ifFalse: [ self save: (self firstElementOf: aValue) inContext: aContext.
							true ] ] ]
		ifNotNil: [ previous
				ifNil: [ self save: (self pop: aValue) inContext: aContext.
					next match: aValue withContext: aContext ]
				ifNotNil: [ previous isEllipsis
						ifTrue: [ (next
								match: (LinkedList newFrom: aValue allButFirst)
								withContext: aContext)
								ifTrue: [ self save: (self pop: aValue) inContext: aContext.
									true ]
								ifFalse: [ false ] ]
						ifFalse: [ self save: (self pop: aValue) inContext: aContext.
							next match: aValue withContext: aContext ] ] ]