util
firstElementOf: aCollection
	^ aCollection isCollection
		ifTrue: [ aCollection first ]
		ifFalse: [ aCollection ]