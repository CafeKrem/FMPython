private-running
save: aCollection inContext: aContext

	^ savedSelector ifNotNil: [ 
		  (aCollection size == 1 and: [ aCollection first isString ])
			  ifTrue: [ aContext at: savedSelector put: aCollection first ]
			  ifFalse: [ aContext at: savedSelector put: aCollection ] ]