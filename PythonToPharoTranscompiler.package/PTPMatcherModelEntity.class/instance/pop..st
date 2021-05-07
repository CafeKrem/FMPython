util
pop: aCollection

	^ aCollection isCollection
		  ifTrue: [ 
			  aCollection removeFirst
			  "(aCollection isKindOf: LinkedList)
				ifTrue: [ aCollection removeFirst ]
				ifFalse: [ aCollection  removeFirst ]" ]
		  ifFalse: [ aCollection ]