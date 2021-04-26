accessing
pop: aCollection
	^ aCollection isCollection
		ifTrue: [ aCollection removeFirst  ]
		ifFalse: [ aCollection ]