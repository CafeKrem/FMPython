accessing
match: aValue withContext: aContext
	^ subPatterns
		allSatisfy: [ :pattern | 
			((aValue mooseDescription allPrimitiveProperties
				reject: [ :each | each isDerived ])
				anySatisfy: [ :property | 
					pattern
						match: (aValue perform: property implementingSelector)
						withContext: aContext ])
				or: [ aValue children
						anySatisfy: [ :child | pattern match: child withContext: aContext ] ] ]