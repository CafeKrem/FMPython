accessing
match: aValue withContext: aContext
	"^ collection
		ifEmpty: [ true ]
		ifNotEmpty: [ :coll | 
			first := coll first.
			(first match: aValue withContext: aContext)
				ifTrue: [ coll allButFirst
						allSatisfy: [ :eachMatcher | eachMatcher match: aValue withContext: aContext ] ]
				ifFalse: [ aValue children
						anySatisfy: [ :child | self match: child withContext: aContext ] ] ]"

	| linkedList element isFirst |
	collection ifEmpty: [ ^ true ].
	isFirst := true.
	linkedList := LinkedList newFrom: collection.
	[ linkedList isEmpty ]
		whileFalse: [ element := linkedList removeFirst.
			(element match: aValue withContext: aContext)
				ifTrue: [ element := linkedList removeFirst.
					isFirst = false ]
				ifFalse: [ isFirst
						ifTrue: [ (aValue children sorted: [ :a :b | a startPos < b startPos ])
								do: [ :child | 
									(self pattern: element match: child withContext: aContext)
										ifTrue: [ linkedList
												ifEmpty: [ ^ true ]
												ifNotEmpty: [ element := linkedList removeFirst.
													isFirst := false ] ] ].
							isFirst
								ifTrue: [ ^ false ] ]
						ifFalse: [ ^ false ] ] ].
	^ linkedList isEmpty