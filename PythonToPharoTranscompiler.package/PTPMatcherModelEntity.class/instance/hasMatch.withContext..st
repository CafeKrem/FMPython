as yet unclassified
hasMatch: aCollection withContext: aContext
	^ self
		templateMatch: (self firstElementOf: aCollection)
		withContext: aContext