accessing
templateMatch: aValue withContext: aContext
	^ collection first match: aValue withContext: aContext
	"| linkedList element isFirst |
	collection ifEmpty: [ ^ true ].
	isFirst := true.
	linkedList := LinkedList newFrom: collection.
	[ linkedList isEmpty ]
		whileFalse: [ element := linkedList first.
			(element match: aValue withContext: aContext)
				ifTrue: [ linkedList removeFirst.
					element := linkedList first.
					isFirst = false ]
				ifFalse: [ isFirst
						ifTrue: [ (aValue children sorted: [ :a :b | a startPos < b startPos ])
								do: [ :child | 
									(self pattern: element match: child withContext: aContext)
										ifTrue: [ linkedList
												ifEmpty: [ ^ true ]
												ifNotEmpty: [ linkedList removeFirst.
													element := [ linkedList first ]
														on: Error
														do: [ nil ].
													isFirst := false ] ]
										ifFalse: [ (linkedList isEmpty not and: [ isFirst not ])
												ifTrue: [ ^ false ] ] ].
							isFirst
								ifTrue: [ ^ false ] ]
						ifFalse: [ ^ false ] ] ].
	^ linkedList isEmpty"