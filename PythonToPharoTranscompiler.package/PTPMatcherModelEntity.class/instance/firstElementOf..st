accessing
firstElementOf: aCollection
	^ aCollection isCollection
		ifTrue: [ aCollection removeFirst ]
		ifFalse: [ aCollection ]