private-running
save: aCollection inContext: aContext

	^ savedSelector ifNotNil: [ 
		  (aCollection size == 1 and: [ aCollection first isKindOf: String ])
			  ifTrue: [ aContext at: savedSelector put: aCollection first ]
			  ifFalse: [ aContext at: savedSelector put: aCollection ] ]