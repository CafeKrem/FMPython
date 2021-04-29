private-running
match: aValue withContext: aContext
	savedSelector
		ifNotNil: [ :selector | 
			(aContext at: selector)
				ifNotNil: [ :item | 
					(item MTLequalsTo: (self firstElementOf: aValue))
						ifTrue: [ self save: (self pop: aValue) inContext: aContext.
							next
								ifNotNil: [ ^ next match: aValue withContext: aContext ]
								ifNil: [ ^ true ] ]
						ifFalse: [ ^ false ] ] ].
	^ next
		ifNil: [ previous
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ aValue size == 1
								ifFalse: [ ^ false ] ] ].
			self nextNilPreviousNil: aValue context: aContext
			"previous
				ifNil: [ self nextNilPreviousNil: aValue context: aContext ]
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ aValue size == 1
								ifTrue: [ self nextNilPreviousNil: aValue context: aContext ]
								ifFalse: [ false ] ]
						ifFalse: [ self nextNilPreviousNil: aValue context: aContext ] ] " ]
		ifNotNil: [ previous
				ifNil: [ self save: (self pop: aValue) inContext: aContext.
					next match: aValue withContext: aContext ]
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ (next
								match: (LinkedList newFrom: aValue allButFirst)
								withContext: aContext)
								ifTrue: [ self save: (self pop: aValue) inContext: aContext.
									true ]
								ifFalse: [ false ] ]
						ifFalse: [ self save: (self pop: aValue) inContext: aContext.
							next match: aValue withContext: aContext ] ] ]