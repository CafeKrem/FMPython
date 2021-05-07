as yet unclassified
hasMatch: aValue withContext: aContext

	savedSelector ifNotNil: [ :selector | 
		(aContext at: selector) ifNotNil: [ :item | 
			^ item MTLequalsTo: (self firstElementOf: aValue) ] ].
	^ next
		  ifNil: [ 
			  previous ifNotNil: [ 
				  (previous isEllipsis or: [ previous isJoker ]) ifTrue: [ 
					  aValue size == 1 ifFalse: [ ^ false ] ] ].
			  true ]
		  ifNotNil: [ 
			  previous ifNotNil: [ 
				  (previous isEllipsis or: [ previous isJoker ]) ifTrue: [ 
					  self flag: #replaceByHasNext.
					  ^ next
						    match: (LinkedList newFrom: aValue allButFirst)
						    withContext: aContext ] ].
			  true ]