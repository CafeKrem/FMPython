accessing
match: aValue withContext: aContext
	^ collection
		ifEmpty: [ ^ true ]
		ifNotEmpty: [ :coll | 
			coll
				anySatisfy: [ :eachMatcher | eachMatcher match: aValue withContext: aContext ] ]