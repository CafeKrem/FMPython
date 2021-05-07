private-running
hasMatch: aValue withContext: aContext

	^ value = aValue or: [ 
		  (aValue class allSlots collect: [ :each | each read: aValue ]) 
			  anySatisfy: [ :each | each = value ] ]