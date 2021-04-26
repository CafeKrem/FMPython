as yet unclassified
save: aCollection inContext: aContext
	^ savedSelector
		ifNotNil: [ aContext at: savedSelector put: aCollection ]