private-running
templateMatch: aValue withContext: aPTPMatcherResult
	^ value = aValue
		or: [ (aValue class allSlots collect: [ :each | each read: aValue ])
				anySatisfy: [ :each | each = value ]
			"(aValue mooseDescription allPrimitiveProperties
				reject: [ :each | each isDerived ])
				anySatisfy: [ :property | 
					value
						= ((aValue class slotNamed: property implementingSelector) read: aValue) ] " ]