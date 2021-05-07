private-running
templateMatch: aValue withContext: aPTPMatcherResult

	^ value = aValue or: [ 
		  ((aValue class allSlots collect: [ :each | each read: aValue ]) 
			   anySatisfy: [ :each | each = value ]) or: [ 
			  (aValue isKindOf: String) and: [ 
				  aValue beginsWithEmpty: value caseSensitive: true ] ] ]