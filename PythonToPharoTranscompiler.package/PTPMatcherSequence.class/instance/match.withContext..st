accessing
match: aValue withContext: aContext
	| first |
	^ collection
		ifEmpty: [ ^ true ]
		ifNotEmpty: [ :coll | 
			first := coll first.
			(first match: aValue withContext: aContext)
				ifTrue: [ coll allButFirst
						allSatisfy: [ :eachMatcher | eachMatcher match: aValue withContext: aContext ] ]
				ifFalse: [ aValue children
						anySatisfy: [ :child | self match: child withContext: aContext ] ] ]