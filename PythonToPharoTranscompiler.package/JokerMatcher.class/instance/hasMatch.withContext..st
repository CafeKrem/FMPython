as yet unclassified
hasMatch: aValue withContext: aContext
	savedSelector
		ifNotNil: [ :selector | 
			(aContext at: selector)
				ifNotNil: [ :item | 
					1 halt.
					(item MTLequalsTo: (self firstElementOf: aValue))
						ifTrue: [ self save: (self pop: aValue) inContext: aContext.
							next
								ifNotNil: [ ^ true	"next match: aValue withContext: aContext" ]
								ifNil: [ ^ true ] ]
						ifFalse: [ ^ false ] ] ].
	^ next
		ifNil: [ previous
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ aValue size == 1
								ifFalse: [ ^ false ] ] ].
			true ]
		ifNotNil: [ previous
				ifNotNil: [ (previous isEllipsis or: [ previous isJoker ])
						ifTrue: [ 1 haltOnce.
							(next
								match: (LinkedList newFrom: aValue allButFirst)
								withContext: aContext)
								ifTrue: [ ^ true ]
								ifFalse: [ ^ false ] ] ].
			true ]