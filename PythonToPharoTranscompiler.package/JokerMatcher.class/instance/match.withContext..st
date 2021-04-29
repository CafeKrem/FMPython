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
			self save: (self firstElementOf: aValue) inContext: aContext.
			true ]
		ifNotNil: [ previous
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ (next
								match: (LinkedList newFrom: aValue allButFirst)
								withContext: aContext)
								ifTrue: [ self save: (self pop: aValue) inContext: aContext.
									^ true ]
								ifFalse: [ ^ false ] ] ].
			self save: (self pop: aValue) inContext: aContext.
			next match: aValue withContext: aContext ]