accessing
templateMatch: aCollection withContext: aPTPMatcherResult
	| aValue |
	aValue := self firstElementOf: aCollection.
	^ value = aValue
		or: [ (aValue class allSlots collect: [ :each | each read: aValue ])
				anySatisfy: [ :each | each = value ]
			"(aValue mooseDescription allPrimitiveProperties
				reject: [ :each | each isDerived ])
				anySatisfy: [ :property | 
					value
						= ((aValue class slotNamed: property implementingSelector) read: aValue) ] " ]