util
pop: aCollection
	^ aCollection isCollection
		ifTrue: [ (aCollection isKindOf: LinkedList)
				ifTrue: [ aCollection removeFirst ]
				ifFalse: [ (LinkedList newFrom: aCollection) removeFirst ] ]
		ifFalse: [ aCollection ]