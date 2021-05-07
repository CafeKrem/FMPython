private-running
templateMatch: aValue withContext: aContext

	^ (super templateMatch: aValue withContext: aContext) or: [ 
		  aValue isString
			  ifTrue: [ aValue beginsWithEmpty: value caseSensitive: true ]
			  ifFalse: [ false ] ]