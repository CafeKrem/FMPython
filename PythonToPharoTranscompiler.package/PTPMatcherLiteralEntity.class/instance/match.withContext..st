accessing
match: aValue withContext: aPTPMatcherResult
	^ value = aValue
		or: [ (aValue mooseDescription allPrimitiveProperties
				reject: [ :each | each isDerived ])
				anySatisfy:
					[ :property | value = (aValue perform: property implementingSelector) ] ]